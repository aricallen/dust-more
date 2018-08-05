const Engine = require('./engine.js');

const INC_DEC_AMOUNT = 0.00001;
// larger values = more limiting
const DIFF_LIMITER = 0.45;

class AttentionEngine extends Engine {
  constructor(engines) {
    super();
    this.engines = engines;
    this.last = null;
    this.curr = null;
    this.min = 0;
    this.max = 1;
    this.K = 0.75;
    this.userValue = null;
  }

  getEngines() {
    return this.engines;
  }

  update() {
    let value = 0;
    this.getEngines().forEach((model) => {
      value += model.getUserValue();
    });
    const mean = value / this.getEngines().length;
    this.updateRange(mean);
    this.setLast(this.getCurr());
    this.setCurr(mean);
    this.userValue = this.getNextValue(mean);
    this.updateUserValue(this.userValue * this.K);
  }

  /**
   * closer it gets to max, the smaller the increment amounts
   * and vice versa
   */
  // averaged value
  getMaxLimiter(value) {
    const max = this.getMax();
    const diff = max - value;
    return diff * DIFF_LIMITER;
  }

  // averaged value
  getMinLimiter(value) {
    const min = this.getMin();
    const diff = value - min;
    return diff * DIFF_LIMITER;
  }

  // averaged value into display/CC values between 0 & 1
  getNextValue(value) {
    let nextValue = value;
    if (nextValue > this.getLast()) {
      nextValue += INC_DEC_AMOUNT;
    } else {
      nextValue -= INC_DEC_AMOUNT;
    }

    if (nextValue >= 1) {
      nextValue = 1;
    }

    if (nextValue <= 0) {
      nextValue = 0;
    }

    return nextValue;
  }

  updateRange(value) {
    this.updateMax(value);
    this.updateMin(value);
  }
}

module.exports = AttentionEngine;
