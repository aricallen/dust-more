require('dotenv').config();
const dgram = require('dgram');
const osc = require('osc');

const routes = {
  ADDRESS_ALPHA: '/muse/elements/alpha_absolute',
  ADDRESS_BETA: '/muse/elements/beta_absolute',
  ADDRESS_GAMMA: '/muse/elements/gamma_absolute',
  ADDRESS_THETA: '/muse/elements/theta_absolute',
};

const { PORT } = process.env;
const server = dgram.createSocket('udp4');

class DustMoreServer {
  constructor() {
    server.on('message', this.processMessage.bind(this));
    server.bind(PORT);
  }

  route(address, data) {
    switch (address) {
      case routes.ADDRESS_ALPHA:
        this.processAlpha(data);
        break;
      case routes.ADDRESS_BETA:
        this.processBeta(data);
        break;
      case routes.ADDRESS_GAMMA:
        this.processGamma(data);
        break;
      case routes.ADDRESS_THETA:
        this.processTheta(data);
        break;
      default:
    }
  }

  processMessage(msg) {
    const { address, args: data } = osc.readMessage(msg);
    this.route(address, data);
  }
}

module.exports = DustMoreServer;
