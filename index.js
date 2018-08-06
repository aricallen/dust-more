require('dotenv').config();
const osc = require('osc');
const DustMoreServer = require('./lib/server.js');
const DustMoreClient = require('./lib/client.js');
const MuseEngine = require('./lib/muse-engine.js');
const NoteEngine = require('./lib/note-engine.js');
const Constants = require('./lib/constants.js');

const {
  ADDRESS_ALPHA,
  ADDRESS_BETA,
  ADDRESS_GAMMA,
  ADDRESS_THETA,

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
} = Constants;

const { LISTEN_PORT, SEND_PORT, HOST } = process.env;


const engineMap = new Map();
const client = new DustMoreClient(HOST, SEND_PORT);

// muse engines
engineMap.set(ADDRESS_ALPHA, new MuseEngine({ address: ADDRESS_ALPHA, client }));
engineMap.set(ADDRESS_BETA, new MuseEngine({ address: ADDRESS_BETA, client }));
engineMap.set(ADDRESS_GAMMA, new MuseEngine({ address: ADDRESS_GAMMA, client }));
engineMap.set(ADDRESS_THETA, new MuseEngine({ address: ADDRESS_THETA, client }));

// note engines
engineMap.set(
  ADDRESS_BASS,
  new NoteEngine({
    address: ADDRESS_BASS,
    museEngine: engineMap.get(ADDRESS_GAMMA),
    client,
    noteOnProbability: NOTE_ON_PROBABILITY_BASS,
    noteOffProbability: NOTE_OFF_PROBABILITY_BASS,
    maxVelocity: MAX_VELOCITY_BASS,
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
  })
);
engineMap.set(
  ADDRESS_SPARKLES,
  new NoteEngine({
    address: ADDRESS_SPARKLES,
    museEngine: engineMap.get(ADDRESS_ALPHA),
    client,
    octaveOffset: 6,
    noteOnProbability: NOTE_ON_PROBABILITY_SPARKLES,
    noteOffProbability: NOTE_OFF_PROBABILITY_SPARKLES,
    maxVelocity: MAX_VELOCITY_SPARKLES,
  })
);

const onUpdate = (msg) => {
  const { address, args: data } = osc.readMessage(msg);
  if (engineMap.has(address)) {
    engineMap.forEach((engine) => {
      engine.update(data);
    });
  }
}

const server = new DustMoreServer(client, LISTEN_PORT, onUpdate);
server.start();

module.exports = { client, server, engineMap };
