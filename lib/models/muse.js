const INC_DEC_AMOUNT = 0.00001;

// larger values = more limiting
const DIFF_LIMITER = 0.45;

class MuseModel {
  constructor(addressPattern, K = 1.0) {
    /**
     * the pattern to always check for when getting values
     * example: "muse/elements/alpha_absolute"
     */
    this.addressPattern = addressPattern;

    // max avg received so far
    this.max = 0;

    // min avg received so far
    this.min = 0;

    // last received value in range
    this.last = null;

    // most current calculated average
    this.curr = null;
    this.userValue = null;

    // for modifying noisy waves down
    this.K = K;
  }

  updateMax(value) {
    if (value > this.max) {
      this.max = value;
    }
  }

  updateMin(value) {
    if (value < this.min) {
      this.min = value;
    }
  }

  isIncreasing() {
    return this.curr > this.last;
  }

  update(msg) {
    const values = this.getValues(msg);
    const averaged = this.getCleanAverage(values) * this.K;
    this.updateRange(averaged);
    this.last = this.curr;
    this.curr = averaged;
    const value = this.getNextValue(averaged);
    this.updateUserValue(value);
  }

  // averaged values
  updateRange(value) {
    this.updateMax(value);
    this.updateMin(value);
  }

  /**
   * closer it gets to max, the smaller the increment amounts
   * and vice versa
   * (averaged value)
   */
  getMaxLimiter(value) {
    const diff = this.max - value;
    return diff * DIFF_LIMITER;
  }

  // averaged value
  getMinLimiter(value) {
    const diff = value - this.min;
    return diff * DIFF_LIMITER;
  }

  // averaged value into display/CC values between 0 & 1
  getNextValue(value) {
    const last = this.getLast();
    let nextValue = value;
    const maxLimiter = this.getMaxLimiter(value);
    const minLimiter = this.getMinLimiter(value);
    if (value > last) {
      nextValue += INC_DEC_AMOUNT * maxLimiter;
    } else {
      nextValue -= INC_DEC_AMOUNT * minLimiter;
    }

    if (value >= 1) {
      nextValue = 1;
    }

    if (value <= 0) {
      nextValue = 0;
    }

    return nextValue;
  }

  updateUserValue(value) {
    this.userValue = value;
  }

  /**
   * get raw values of muse message
   * @param msg from osc event
   * @return ]
   */
  getValues(msg) {
    const values = [];
    if (msg.checkAddrPattern(this.getAddressPattern())) {
      for (let i = 0; i < 4; i += 1) {
        values[i] = msg.get(i).value();
      }
    } else {
      throw new Error('msg did match address pattern for this model');
    }
    return values;
  }

  /**
   * drop outlier values and avg the values
   * @param values values to average
   * @return
   */
  getCleanAverage(values) {
    let accum = 0;
    let validValuesCount = 0;

    for (let i = 0; i < values.length; i += 1) {
      if (values[i] !== 0) {
        validValuesCount += 1;
      }
      accum += values[i];
    }

    if (validValuesCount !== 0) {
      const mean = accum / validValuesCount;
      return mean;
    }
    return 0;
  }
}

module.exports = MuseModel;
