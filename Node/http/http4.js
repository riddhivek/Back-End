const http = require('http');

const server = http.createServer((req, res) => {
    res.end('Wel come to LocalServer2...');
});

server.listen(4567, () => {
    console.log('server Start at port 4567');
});