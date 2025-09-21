const express = require('express');
const path = require('path');
const fs = require('fs');
const app = express();

app.get('/',function(req,res){
    res.sendFile(path.join(__dirname,"index.html"))
});

app.get('/profile-picture',function(req,res){
    const img = fs.readFileSync('images/profile-1.jpg');
    res.writeHead(200,{'Content-Type':'image/jpg'});
    res.end(img,'binary');
})

app.listen(3000,function(){
    console.log("app listening on port 3000!")
})