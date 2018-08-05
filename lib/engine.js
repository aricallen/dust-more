const { mean } = require('lodash');

/**
 * base class for storing common values/methods
 */
class Engine {
  getEngine() {
    return this.engine;
  }

  setEngine(engine) {
    this.engine = engine;
  }

  setPrev(value) {
    this.last = value;
  }

  getPrev() {
    return this.last;
  }

  getMax() {
    return this.max;
  }

  setMax(value) {
    this.max = value;
  }

  getCurr() {
    return this.curr;
  }

  setCurr(value) {
    this.curr = value;
  }

  updateMax(value) {
    if (value > this.getMax()) {
      this.setMax(value);
    }
  }

  getMin() {
    return this.min;
  }

  setMin(value) {
    this.min = value;
  }

  updateMin(value) {
    if (value < this.getMin()) {
      this.setMin(value);
    }
  }

  isIncreasing() {
    return this.getCurr() > this.getPrev();
  }

  updateUserValue(value) {
    this.userValue = value;
  }

  getUserValue() {
    return this.userValue;
  }

  // shortcut function for updating max && min
  updateRange(value) {
    this.updateMin(value);
    this.updateMax(value);
  }

  /**
   * closer it gets to max, the smaller the increment amounts
   * and vice versa
   */
  // averaged value
  getMaxLimiter(value) {
    const max = this.getMax();
    const diff = max - value;
    return diff * this.diffLimiter;
  }

  // averaged value
  getMinLimiter(value) {
    const min = this.getMin();
    const diff = value - min;
    return diff * this.diffLimiter;
  }

  /**
   * drop outlier values and avg the values
   * @param values values to average
   * @return float
   */
  getCleanAverage(values) {
    const validValues = values.filter((v) => v !== 0);

    if (validValues.length > 0) {
      return mean(values);
    }
    return 0;
  }

  update() {
    throw new Error(`Engines must implement 'update'`);
  }

  reset() {
    throw new Error(`Engines must implement 'reset'`);
  }
}

module.exports = Engine;
