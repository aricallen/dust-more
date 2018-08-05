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

  setLast(value) {
    this.last = value;
  }

  getLast() {
    return this.last;
  }

  getMaxValue() {
    return this.maxValue;
  }

  setMaxValue(value) {
    this.maxValue = value;
  }

  updateMax(value) {
    if (value > this.getMax()) {
      this.setMax(value);
    }
  }

  getMinValue() {
    return this.minValue;
  }

  setMinValue(value) {
    this.minValue = value;
  }

  updateMin(value) {
    if (value < this.getMin()) {
      this.setMin(value);
    }
  }

  isIncreasing() {
    return this.getCurr() > this.getLast();
  }

  updateUserValue(value) {
    this.userValue = value;
  }

  getUserValue() {
    return this.userValue;
  }

  // averaged values
  updateRange(value) {
    this.updateMax(value);
    this.updateMin(value);
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

  update() {
    throw new Error(`Engines must implement 'update'`);
  }

  reset() {
    throw new Error(`Engines must implement 'reset'`);
  }
}

module.exports = Engine;
