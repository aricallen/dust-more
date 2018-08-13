class RootManager {
  constructor() {
    this._isTransmitting = false;
  }

  start() {
    this._isTransmitting = true;
  }

  stop() {
    this._isTransmitting = false;
  }

  isTransmitting() {
    return this._isTransmitting;
  }
}

module.exports = RootManager;
