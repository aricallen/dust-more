const Engine = require('./engine.js');
const MaxMessage = require('./models/max-message.js');

const INC_DEC_AMOUNT = 0.1;
// larger values = more limiting
const DIFF_LIMITER = 0.45;

class MuseEngine extends Engine {
  /**
   * set the signal pattern for this object
   * @param address for getting correct values
   */
  constructor({
    address,
    K = 1.0,
    diffLimiter = DIFF_LIMITER,
    incDecAmount = INC_DEC_AMOUNT,
    client,
  }) {
    super();

    // max avg received so far
    this.max = 0;

    // min avg received so far
    this.min = 0;

    // last received value in range
    this.prev = 0;

    // for modifying noisy waves down
    this.address = address;
    this.K = K;
    this.diffLimiter = diffLimiter;
    this.incDecAmount = incDecAmount;
    this.client = client;
  }

  getAveraged(data) {
    const averaged = this.getCleanAverage(this.getValues(data));
    return averaged * this.K;
  }

  update(data) {
    const averaged = this.getAveraged(data);
    const value = this.getNextValue(this.getPrev(), averaged);
    this.setPrev(averaged);
    const maxMessage = new MaxMessage({
      address: this.getAddress(),
      data: value,
    });
    this.client.send(maxMessage);
  }

  // averaged value between 0 & 1
  getNextValue(value) {
    let nextValue = value;
    const prev = this.getPrev();
    const maxLimiter = this.getMaxLimiter(value) || 1;
    const minLimiter = this.getMinLimiter(value) || 1;
    if (value >= prev) {
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
}

module.exports = MuseEngine;
