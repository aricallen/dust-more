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
    const waveValues = Array.from(this.engineMap.values()).map((engine) => engine.latestSma);
    const averaged = mean(waveValues);
    this.sma.update(averaged);
    const nextValue = this.sma.calc();
    this.latestSma = nextValue;

    if (this.shouldSendMessage()) {
      const normalized = this.getNormalized(nextValue);
      this.sendValue(normalized);
    }
  }
}

module.exports = AttentionEngine;
