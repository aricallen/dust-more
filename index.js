require('dotenv').config();
const DustMoreServer = require('./lib/server.js');
const DustMoreClient = require('./lib/client.js');

const { LISTEN_PORT, SEND_PORT, HOST } = process.env;

const client = new DustMoreClient(HOST, SEND_PORT);
const server = new DustMoreServer(client, LISTEN_PORT);
server.start();

module.exports = { client, server };
