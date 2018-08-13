class LightEngine {
  constructor({ client, address }) {
    this.client = client;
    this.address = address;
  }

  update(value) {
    this.client.send({ address: this.address, data: value });
  }
}

module.exports = LightEngine;
