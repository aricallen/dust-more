const MaxMessage = require('./models/max-message.js');
const { ADDRESS_RESET } = require('./constants.js');

class StatusEngine {
  constructor({ address, client, engineMap }) {
    this.address = address;
    this.client = client;
    this.engineMap = engineMap;
  }

  update(data = []) {
    const good = data.filter((x) => x === 1);
    if (good.length < 1) {
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
