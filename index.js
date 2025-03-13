//import the express module
const express = require('express');

const mongoose = require('mongoose');
const authRouter =require('./routes/auth');

//Define the port number the server will listen on
const PORT = 3000;

//Creat an instance of an express application
//because it give us the starting point 
const app = express();
//mongodb string
//const DB ="mongodb+srv://kavin:Passwordkavin@cluster0.qztfw.mongodb.net/"
const DB ="mongodb+srv://kavin:Passwordkavin@cluster0.qztfw.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"

//middleware - to register routes or to mount routes
app.use(express.json());
app.use(authRouter);

mongoose.connect(DB).then(()=>{
    console.log('Mongodb Connected ');
});

//start the saver and listen on the specified port
app.listen(PORT,"0.0.0.0",function(){
    //LOG THE NUMBER
    console.log('server is running on port ${PORT}');
}) 