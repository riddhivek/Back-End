     //   1 DAY

// const express = require('express');
// const server = express();       //server create

// server.get('/', (req, res) => {
//     res.end('Welcome to EXPRESS.JS');
// })

// server.get('/user', (req, res) => {
//     res.end('Welcome to USER');
// })

// server.get('/product', (req, res) => {
//     res.end('Welcome to PRODUCT');
// })

// server.listen(2604, () => {
//     console.log(`Server Start at http://localhost:2604`);
// })

// 2 DAY

const express = require('express');
const server = express();       //server create
const path = require('path');

server.get('/', (req, res) => {
    res.end('Welcome to EXPRESS.JS');
})
server.post('/', (req, res) => {
    res.send('POST METHOD')
})
server.put('/', (req, res) => {
    res.status(400).json('WelCome to PUT METHOD');
})
server.put('/', (req, res) => {
    res.json('WelCome to PUT METHOD');
})
server.patch('/', (req, res) => {
    res.sendFile(path.join(__dirname, ('abc.txt')));
})
server.delete('/', (req, res) => {
    res.sendStatus(201);
})

server.listen(2604, () => {
    console.log(`Server Start at http://localhost:2604`);
})