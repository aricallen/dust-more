const SMA = require('@solstice.sebastian/simple-moving-average');
const Constants = require('@solstice.sebastian/constants');
const Engine = require('./engine.js');
const MaxMessage = require('./models/max-message.js');

const INC_DEC_AMOUNT = 0.01;
const SMA_PERIOD = 60;

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
    this.min = 0;
    this.max = 1;
    this.originalMin = this.min;
    this.originalMax = this.max;
  }

  getAveraged(data) {
    const averaged = this.getCleanAverage(this.getValues(data));
    return averaged;
  }

  getRollingAverage(data) {
    const nextAverage = this.getAveraged(data);
    this.sma.update(nextAverage);
    const nextValue = this.sma.calc();
    if (nextValue !== Constants.INSUFFICIENT_DATA) {
      this.updateRange(nextValue);
    }
    return nextValue;
  }

  update(data) {
    // const averaged = this.getAveraged(data);
    // const nextValue = this.getNextValue(this.getPrev(), averaged);

    // const maxMessage = new MaxMessage({
    //   address: this.getAddress(),
    //   data: nextValue,
    // });
    // this.setPrev(nextValue);
    // this.client.send(maxMessage);

    const nextRollingValue = this.getRollingAverage(data);
    if (nextRollingValue !== Constants.INSUFFICIENT_DATA) {
      const maxRollingMessage = new MaxMessage({
        address: this.getAddress(),
        data: nextRollingValue,
      });
      this.client.send(maxRollingMessage);
    }
  }

  // averaged value between 0 & 1
  getNextValue(prev, curr) {
    let nextValue = curr;
    const maxLimiter = this.getMaxLimiter(nextValue) || 1;
    const minLimiter = this.getMinLimiter(nextValue) || 1;
    if (nextValue >= prev) {
      nextValue += this.incDecAmount * maxLimiter;
    } else {
      nextValue -= this.incDecAmount * minLimiter;
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
  }
}

module.exports = MuseEngine;
