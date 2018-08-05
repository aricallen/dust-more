const dgram = require('dgram');

const { HOST, PORT } = process.env;

class DustMoreClient {
  constructor() {
    this.client = dgram.createSocket('udp4');
  }

  sendToMax(msg) {
    this.client.send(Buffer.from(msg), PORT, HOST);
  }
}

module.exports = DustMoreClient;
