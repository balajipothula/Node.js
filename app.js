var http = require('http');
http.createServer(function (req, res) {
  res.write('Hi from BALAJI POTHULA :)'); 
  res.end(); 
}).listen(8585);
