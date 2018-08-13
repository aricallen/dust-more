const Engine = require('./engine.js');
const MaxMessage = require('./models/max-message.js');
const { ADDRESS_RESET, TIMEOUT_BEFORE_RESET } = require('./constants.js');

class StatusEngine extends Engine {
  constructor({ address, client, engineMap }) {
    super({ address, client });
    this.address = address;
    this.client = client;
    this.engineMap = engineMap;
    this._isTransmitting = false;
    this.timeoutId = null;
    this.startListening();
  }

  isTransmitting() {
    return this._isTransmitting;
  }

  startListening() {
    this._isTransmitting = true;
    clearTimeout(this.timeoutId);
    this.timeoutId = setTimeout(() => {
      this._isTransmitting = false;
    }, TIMEOUT_BEFORE_RESET);
  }

  update(data = []) {
    this.startListening();
    const good = data.filter((x) => x === 1);
    if (data.length > 1 && good.length < 1) {
      const message = new MaxMessage({
        address: ADDRESS_RESET,
        data: [1],
      });
      this.client.send(message);
      this.reset();
    }
  }

  reset() {
    console.log('headset taken off?');
    this.engineMap.forEach((engine) => {
      if (engine.getAddress() !== this.address) {
        engine.reset();
      }
    });
  }
}

module.exports = StatusEngine;
