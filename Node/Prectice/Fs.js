var fs= require ("fs");
const {add,product} = require('./basic')

// // Asynchronous - Opening File
// console.log("opening file!");

// fs.open('input.txt' , (err, fd)=>{
//     if(err){
//         return console.log(err);
//     }
// console.log("File open successfully");
// });

// fs.openSync('abc.txt');
// console.log('File Open SucessFully');

// let t1 = performance.now();
// console.log("Addtion is : ",add(25, 3));
// fs.readFile('abc.txt','utf-8',(err,data)=>{
//     if(arr) console.log(err);
//     else console.log(data);
// })

// let data = fs.readFileSync('abc.txt', 'utf-8')
// console.log(data);

// console.log("Product is: ",product(25, 3));
// let t2 = performance.now();
// console.log('Time Diffrence: ',t2-t1);

// let txt = `#include<stdio.h>
// int main()
// {
//     printf("Hello World");
// }`

// fs.writeFile('hello.c',txt,(err)=>{
//     if(err)console.log(err);
//     else console.log('File Write Sucessfully');
// })

// fs.writeFileSync("hello.c", "//learning c language");
// console.log('File Write Sucessfully');

// fs.appendFile('hello.c',txt,(err)=>{
//     if(err) console.log(err);
//     else console.log('File Append Sucessfully');
// })