require('dotenv').config();
const osc = require('osc');
const DustMoreServer = require('./lib/server.js');
const DustMoreClient = require('./lib/client.js');
const MuseEngine = require('./lib/muse-engine.js');
const NoteEngine = require('./lib/note-engine.js');
const StatusEngine = require('./lib/status-engine.js');
const AttentionEngine = require('./lib/attention-engine.js');
const Constants = require('./lib/constants.js');

const {
  ADDRESS_ALPHA,
  ADDRESS_BETA,
  ADDRESS_GAMMA,
  ADDRESS_THETA,
  ADDRESS_IS_GOOD,
  ADDRESS_ATTENTION,

  ADDRESS_BASS,
  ADDRESS_PADS,
  ADDRESS_SPARKLES,

  NOTE_ON_PROBABILITY_BASS,
  NOTE_OFF_PROBABILITY_BASS,
  NOTE_ON_PROBABILITY_PADS,
  NOTE_OFF_PROBABILITY_PADS,
  NOTE_ON_PROBABILITY_SPARKLES,
  NOTE_OFF_PROBABILITY_SPARKLES,
  MAX_VELOCITY_BASS,
  MAX_VELOCITY_PADS,
  MAX_VELOCITY_SPARKLES,
  MAX_DURATION_BASS,
  MAX_DURATION_PADS,
  MAX_DURATION_SPARKLES,
} = Constants;

const { LISTEN_PORT, SEND_PORT, HOST } = process.env;

const engineMap = new Map();
const client = new DustMoreClient(HOST, SEND_PORT);

// muse engines
engineMap.set(ADDRESS_ALPHA, new MuseEngine({ address: ADDRESS_ALPHA, client }));
engineMap.set(ADDRESS_BETA, new MuseEngine({ address: ADDRESS_BETA, client }));
engineMap.set(ADDRESS_GAMMA, new MuseEngine({ address: ADDRESS_GAMMA, client }));
engineMap.set(ADDRESS_THETA, new MuseEngine({ address: ADDRESS_THETA, client }));

engineMap.set(
  ADDRESS_THETA,
  new AttentionEngine({ address: ADDRESS_ATTENTION, client, engineMap })
);
engineMap.set(ADDRESS_IS_GOOD, new StatusEngine({ address: ADDRESS_IS_GOOD, client, engineMap }));

// note engines
engineMap.set(
  ADDRESS_BASS,
  new NoteEngine({
    address: ADDRESS_BASS,
    museEngine: engineMap.get(ADDRESS_ALPHA),
    client,
    noteOnProbability: NOTE_ON_PROBABILITY_BASS,
    noteOffProbability: NOTE_OFF_PROBABILITY_BASS,
    maxVelocity: MAX_VELOCITY_BASS,
    maxDuration: MAX_DURATION_BASS,
  })
);
engineMap.set(
  ADDRESS_PADS,
  new NoteEngine({
    address: ADDRESS_PADS,
    museEngine: engineMap.get(ADDRESS_BETA),
    client,
    octaveOffset: 3,
    noteOnProbability: NOTE_ON_PROBABILITY_PADS,
    noteOffProbability: NOTE_OFF_PROBABILITY_PADS,
    maxVelocity: MAX_VELOCITY_PADS,
    maxDuration: MAX_DURATION_PADS,
  })
);
engineMap.set(
  ADDRESS_SPARKLES,
  new NoteEngine({
    address: ADDRESS_SPARKLES,
    museEngine: engineMap.get(ADDRESS_THETA),
    client,
    octaveOffset: 6,
    noteOnProbability: NOTE_ON_PROBABILITY_SPARKLES,
    noteOffProbability: NOTE_OFF_PROBABILITY_SPARKLES,
    maxVelocity: MAX_VELOCITY_SPARKLES,
    maxDuration: MAX_DURATION_SPARKLES,
  })
);

const onUpdate = (msg) => {
  const { address, args: data } = osc.readMessage(msg);
  if (engineMap.has(address)) {
    engineMap.get(address).update(data);
  }
};

const server = new DustMoreServer(client, LISTEN_PORT, onUpdate);
server.start();

const cleanup = () => {
  engineMap.forEach((engine) => engine.reset());
  console.log('cleaning up...');
  process.exit(0);
};

process.on('exit', cleanup);
process.on('error', cleanup);
process.on('SIGINT', cleanup);
process.on('SIGUSR1', cleanup);
process.on('SIGUSR2', cleanup);
process.on('uncaughtException', cleanup);

module.exports = { client, server, engineMap };
