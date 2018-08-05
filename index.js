require('dotenv').config();
const dgram = require('dgram');

const { PORT } = process.env;
const server = dgram.createSocket('udp4');
const client = dgram.createSocket('udp4');

server.on('error', (err) => {
  console.log(`server error:\n${err.stack}`);
  server.close();
});

const sendToMax = ({ json, msg }) => {
  client.send(Buffer.from(msg), '12345', '127.0.0.1', (err) => {
    // client.close();
  });
};

server.on('message', (msg, rinfo) => {
  console.log(`server got: ${msg} from ${rinfo.address}:${rinfo.port}`);
  const [address, data] = msg.toString().split(',');
  const json = Buffer.from(data).toJSON().data;
  // console.log(`buffer string: ${JSON.stringify(json)}`);
  sendToMax({ json, msg });
});

server.bind(PORT);
