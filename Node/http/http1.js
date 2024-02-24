const http = require('http');

const server = http.createServer((req,res)=> {
    res.end('Wel come to LocalServer1...');
});

server.listen(1234,()=>{
    console.log('server Start at port 1234');
});