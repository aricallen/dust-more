require('dotenv').config();
const dgram = require('dgram');
const osc = require('osc');
const MuseEngine = require('./muse-engine.js');

const ADDRESS_ALPHA = '/muse/elements/alpha_absolute';
const ADDRESS_BETA = '/muse/elements/beta_absolute';
const ADDRESS_GAMMA = '/muse/elements/gamma_absolute';
const ADDRESS_THETA = '/muse/elements/theta_absolute';

const { PORT } = process.env;
const server = dgram.createSocket('udp4');

class DustMoreServer {
  constructor() {
    server.on('message', this.processMessage.bind(this));
    server.bind(PORT);
    this.engineMap = new Map();
    this.engineMap.set(ADDRESS_ALPHA, new MuseEngine());
    this.engineMap.set(ADDRESS_BETA, new MuseEngine());
    this.engineMap.set(ADDRESS_GAMMA, new MuseEngine());
    this.engineMap.set(ADDRESS_THETA, new MuseEngine());
  }

  processMessage(msg) {
    const { address, args: data } = osc.readMessage(msg);
    this.engineMap.get(address).update(data);
  }
}

module.exports = DustMoreServer;
