const dgram = require('dgram');
const osc = require('osc');
const MuseEngine = require('./muse-engine.js');

const ADDRESS_ALPHA = '/muse/elements/alpha_absolute';
const ADDRESS_BETA = '/muse/elements/beta_absolute';
const ADDRESS_GAMMA = '/muse/elements/gamma_absolute';
const ADDRESS_THETA = '/muse/elements/theta_absolute';

class DustMoreServer {
  constructor(client, port) {
    this.server = dgram.createSocket('udp4');
    this.client = client;
    this.port = port;

    this.engineMap = new Map();
    this.engineMap.set(ADDRESS_ALPHA, new MuseEngine({ address: ADDRESS_ALPHA, client }));
    this.engineMap.set(ADDRESS_BETA, new MuseEngine({ address: ADDRESS_BETA, client }));
    this.engineMap.set(ADDRESS_GAMMA, new MuseEngine({ address: ADDRESS_GAMMA, client }));
    this.engineMap.set(ADDRESS_THETA, new MuseEngine({ address: ADDRESS_THETA, client }));
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
    const engine = this.engineMap.get(address);
    if (engine !== undefined) {
      engine.update(data);
    }
  }
}

module.exports = DustMoreServer;
