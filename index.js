require('dotenv').config();
const dgram = require('dgram');

const { PORT } = process.env;
const server = dgram.createSocket('udp4');

server.on('error', (err) => {
  console.log(`server error:\n${err.stack}`);
  server.close();
});

server.on('message', (msg, rinfo) => {
  console.log(`server got: ${msg} from ${rinfo.address}:${rinfo.port}`);
  const [address, data] = msg.toString().split(',');
  const json = Buffer.from(data).toJSON().data;
  console.log(`buffer string: ${JSON.stringify(json)}`);
});

server.bind(PORT);
