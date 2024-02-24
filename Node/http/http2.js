const http = require('http');

const server = http.createServer((req, res) => {
    res.end('Wel come to LocalServer2...');
});

server.listen(2345, () => {
    console.log('server Start at port 2345');
});