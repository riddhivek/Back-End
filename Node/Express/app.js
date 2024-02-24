const express = require('express');
const app = express();
const port = 2604;
const morgan = require('morgan');

// MIDDLEWARE

let myfun = (req, res, next) => {
    // console.log(req.query);

    if((req.query.age) >= 18){
        next();
    }else{
        res.send('Sorry! you have under below 18');
    }
}

// app.use(myFun);  //Application use middleware
app.use(express.json());        //Built-in
app.use(morgan('dev'));
app.get('/', (req, res) => {
    res.send('Welcom to EXPRESS JS');
});
app.post('/', (req, res) => {
    res.send('POST METHOD');
});

app.listen(port, ()=>{
    console.log(`server start at http://localhosty:2604`);
})