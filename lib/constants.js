module.exports = {
  // input addresses / output from muse
  ADDRESS_ALPHA: '/muse/elements/alpha_absolute',
  ADDRESS_BETA: '/muse/elements/beta_absolute',
  ADDRESS_GAMMA: '/muse/elements/gamma_absolute',
  ADDRESS_THETA: '/muse/elements/theta_absolute',
  ADDRESS_IS_GOOD: '/muse/elements/is_good',

  // output addresses to max
  ADDRESS_BASS: '/dust_more/bass',
  ADDRESS_PADS: '/dust_more/pads',
  ADDRESS_SPARKLES: '/dust_more/sparkles',
  ADDRESS_RESET: '/dust_more/reset',
  ADDRESS_ATTENTION: '/dust_more/attention',

  NOTE_ON_PROBABILITY_BASS: 0.008 * 0.45,
  NOTE_OFF_PROBABILITY_BASS: 0.01 * 0.75,
  MAX_VELOCITY_BASS: 40,
  MAX_DURATION_BASS: 3000,

  NOTE_ON_PROBABILITY_PADS: 0.008 * 2.99,
  NOTE_OFF_PROBABILITY_PADS: 0.01 * 4.99,
  MAX_VELOCITY_PADS: 127,
  MAX_DURATION_PADS: 5000,

  NOTE_ON_PROBABILITY_SPARKLES: 0.008,
  NOTE_OFF_PROBABILITY_SPARKLES: 0.01 * 0.7,
  MAX_VELOCITY_SPARKLES: 127,
  MAX_DURATION_SPARKLES: 240,
};
