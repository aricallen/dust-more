const { mean } = require('lodash');
const MaxMessage = require('./models/max-message.js');

/**
 * base class for storing common values/methods
 */
class Engine {
  getWaveName() {
    return this.waveName;
  }

  getEngine() {
    return this.engine;
  }

  setEngine(engine) {
    this.engine = engine;
  }

  setPrev(value) {
    this.prev = value;
  }

  getPrev() {
    return this.prev;
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

  getMin() {
    return this.min;
  }

  setMin(value) {
    this.min = value;
  }

  updateMin(value) {
    this.setMin(value);
    const address = `/${this.getWaveName()}/update_min`;
    // console.log(`updating ${this.getWaveName()} min to -> ${value}`);
    this.client.send(
      new MaxMessage({
        address,
        data: value,
      })
    );
  }

  updateMax(value) {
    this.setMax(value);
    const address = `/${this.getWaveName()}/update_max`;
    // console.log(`updating ${this.getWaveName()} max to -> ${value}`);
    this.client.send(
      new MaxMessage({
        address,
        data: value,
      })
    );
  }

  updateRange(value) {
    if (value < this.getMin()) {
      this.updateMin(value);
    }
    if (value > this.getMax()) {
      this.updateMax(value);
    }
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

  getAddress() {
    return this.address;
  }

  sendValue(value) {
    const message = new MaxMessage({
      address: this.getAddress(),
      data: value,
    });
    this.client.send(message);
  }

  update() {
    throw new Error(`Engines must implement 'update'`);
  }

  reset() {
    throw new Error(`Engines must implement 'reset'`);
  }
}

module.exports = Engine;
