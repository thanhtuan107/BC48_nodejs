// let check ="wellcome nodejs 48"
// console.log(check);
// trl + ? -- cmt

import express from 'express'



// khoi tao ung dung express
const app = express();

//khai bao API don gian
// param1: duong dan api, kieu string
//param2: function xu li api
//domain default cua BE : http://localhost:3000
//http://localhost:3000
//req: nhan yeu caua tu client (frontend, postman ...)
// res: tra ve ket qua cho client
app.get('/',(req,res)=>{
    res.send('welcome to nodejs 48')
})

app.get('/test',(req,res)=>{
    res.send('test api 1313132')
})

// de BE luon co code moi > nodemon

//khai bao port mac dinh chco BE
const port = 3000;
app.listen(port, () => {
    console.log(`sever is running port ${port}`);
    
})