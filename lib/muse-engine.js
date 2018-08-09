const SMA = require('@solstice.sebastian/simple-moving-average');
const Constants = require('@solstice.sebastian/constants');
const Engine = require('./engine.js');
const MaxMessage = require('./models/max-message.js');
const { ADDRESS_RESET } = require('./constants.js');

const INC_DEC_AMOUNT = 0.01;
const SMA_PERIOD = 30;

class MuseEngine extends Engine {
  /**
   * set the signal pattern for this object
   * @param address for getting correct values
   */
  constructor({ address, incDecAmount = INC_DEC_AMOUNT, client, smaPeriod = SMA_PERIOD }) {
    super();

    // last received value in range
    this.prev = 0;

    this.address = address;
    this.waveName = address.replace('/muse/elements/', '');
    this.incDecAmount = incDecAmount;
    this.client = client;
    this.smaPeriod = smaPeriod;
    this.sma = SMA({ period: smaPeriod, values: [] });

    // defaults
    this.isUpdating = false;
    this.min = 0.5;
    this.max = 0.5;
    this.minRangeRequired = 0.25;
    this.originalMin = this.min;
    this.originalMax = this.max;
    this.reset();
  }

  getAveraged(data) {
    const averaged = this.getCleanAverage(this.getValues(data));
    return averaged;
  }

  // normalize between range and 0-1
  getNormalized() {
    const range = this.max - this.min;
    return (range - this.min) / (this.max - this.min);
  }

  isCloserToMin() {
    return Math.abs(this.prev - this.min) < Math.abs(this.max - this.prev); // closer to min
  }

  shouldUpdate() {
    if (this.isUpdating) {
      return true;
    }
    if (
      this.prev !== Constants.INSUFFICIENT_DATA &&
      this.max - this.min > this.minRangeRequired &&
      this.isCloserToMin()
    ) {
      this.isUpdating = true;
      return true;
    }
    return false;
  }

  getRollingAverage(data) {
    const nextAverage = this.getAveraged(data);
    this.sma.update(nextAverage);
    const nextValue = this.sma.calc();
    this.setPrev(nextValue);
    this.updateRange(nextValue);
    return nextValue;
  }

  update(data) {
    const nextRollingValue = this.getRollingAverage(data);
    if (this.shouldUpdate()) {
      this.sendValue(nextRollingValue);
    }
  }

  // averaged value between 0 & 1
  getNextValue(prev, curr) {
    let nextValue = curr;
    if (nextValue >= prev) {
      nextValue += this.incDecAmount;
    } else {
      nextValue -= this.incDecAmount;
    }

    if (nextValue >= 1) {
      nextValue = 1;
    }

    if (nextValue <= 0) {
      nextValue = 0;
    }

    return nextValue;
  }

  /**
   * get raw values of muse message
   * @param data from osc event
   * @return float[]
   */
  getValues(data) {
    if (Array.isArray(data)) {
      return [...data];
    }
    return [data];
  }

  /**
   * reset scales
   */
  reset() {
    this.updateMin(this.originalMin);
    this.updateMax(this.originalMax);
    this.sendValue(0);
    this.client.send(
      new MaxMessage({
        address: ADDRESS_RESET,
        data: 0,
      })
    );
  }
}

module.exports = MuseEngine;
