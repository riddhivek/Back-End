// http Module

const http = require('http');
const fs = require('fs');
const data = fs.readFileSync('./hello.json' , 'utf-8')

// const server = http.createServer((req,res)=> {
//     // res.setHeader('dummy','dummy value');
//     // res.setHeader('content-type', 'text/html');
//     // res.setHeader('content-type', 'application/json');
//     res.end('Wel come to LocalServer1...');
// });

const server = http.createServer();

server.on('request', (req, res) => {
    // res.setHeader('Content-type' , 'text/html');
    // res.write('<h1 style= "color: red">Hello World</h1>');
    res.write('{"hello": 1234}');
    res.end(data);
})

// server.on('request', (req , res) => {
//     // console.log(req.url);
//     // res.setHeader('Content-type' , 'text/html');
//     res.end(data);
// })

server.listen(1234,()=>{
    console.log('server Start at port 1234');
});
