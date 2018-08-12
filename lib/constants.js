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

  NOTE_ON_PROBABILITY_BASS: 0.75,
  MAX_VELOCITY_BASS: 64,
  MAX_DURATION_BASS: 3000,
  OCTAVE_OFFSET_BASS: 4,

  NOTE_ON_PROBABILITY_PADS: 0.75,
  MAX_VELOCITY_PADS: 127,
  MAX_DURATION_PADS: 5000,
  OCTAVE_OFFSET_PADS: 6,

  NOTE_ON_PROBABILITY_SPARKLES: 0.5,
  MAX_VELOCITY_SPARKLES: 127,
  MAX_DURATION_SPARKLES: 240,
  OCTAVE_OFFSET_SPARKLES: 6,
};
