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

  // scale latestSma `range` -> 0-1
  getNormalized(val) {
    const range = this.max - this.min;
    return (val - this.min) / range;
  }

  isCloserToMin() {
    return Math.abs(this.prev - this.min) < Math.abs(this.max - this.prev); // closer to min
  }

  shouldSendMessage() {
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
    return nextValue;
  }

  update(data) {
    const nextRollingValue = this.getRollingAverage(data);
    this.updateRange(nextRollingValue);
    this.latestSma = nextRollingValue;

    if (this.shouldSendMessage()) {
      // normalize to send out
      const normalized = this.getNormalized(nextRollingValue);
      this.sendValue(normalized);
    }
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
    this.min = this.originalMin;
    this.max = this.originalMax;
    this.isUpdating = false;
    this.sendValue(0);
    this.client.send(
      new MaxMessage({
        address: ADDRESS_RESET,
        data: 0,
      })
    );
    console.log(`resetting ${this.waveName}...`);
  }
}

module.exports = MuseEngine;
