const dgram = require('dgram');
const osc = require('osc');

class DustMoreServer {
  constructor(client, port) {
    this.server = dgram.createSocket('udp4');
    this.client = client;
    this.port = port;
  }

  start() {
    this.server.on('message', this.processMessage.bind(this));
    this.server.bind(this.port);
  }

  stop() {
    process.exit(0);
  }

  processMessage(msg) {
    const { address, args: data } = osc.readMessage(msg);
    if (this.engineMap.has(address)) {
      this.engineMap.forEach((engine) => {
        engine.update(data);
      });
    }
  }
}

module.exports = DustMoreServer;
