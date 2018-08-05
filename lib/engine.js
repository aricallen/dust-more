/**
 * base class for storing common values/methods
 */
class Engine {
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

  getMinValue() {
    return this.minValue;
  }

  setMinValue(value) {
    this.minValue = value;
  }

  setModel(model) {
    this.model = model;
  }

  getModel() {
    return this.model;
  }

  updateUserValue(value) {
    this.userValue = value;
  }

  getUserValue() {
    return this.userValue;
  }

  update() {
    throw new Error(`Engines must implement 'update'`);
  }

  reset() {
    throw new Error(`Engines must implement 'reset'`);
  }
}

module.exports = Engine;
