const { mean } = require('lodash');
const MuseEngine = require('./muse-engine.js');
const { ADDRESS_ATTENTION } = require('./constants.js');

const INC_DEC_AMOUNT = 0.00001;
const SMA_PERIOD = 90;

class AttentionEngine extends MuseEngine {
  constructor({ address, engineMap, client }) {
    super({ address, incDecAmoutn: INC_DEC_AMOUNT, client, smaPeriod: SMA_PERIOD });
    this.address = ADDRESS_ATTENTION;
    this.waveName = 'attention';
    this.engineMap = engineMap;

    // defaults are inherited
  }

  update() {
    // sma's of each wave
    const waveValues = Array.from(this.engineMap.values())
      .filter((engine) => engine.getAddress() !== this.getAddress())
      .map((engine) => engine.getLatest())
      .filter((val) => val > 0);
    const averaged = mean(waveValues);
    this.sma.update(averaged);
    this.latestSma = this.sma.calc();
    this.updateRange(this.latestSma);

    if (this.shouldSendMessage()) {
      this.send(this.getLatest());
    }
  }
}

module.exports = AttentionEngine;
