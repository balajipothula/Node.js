var http = require('http');
var fs   = require('fs');

http.createServer(function (req, res) {

  fs.readFile('index.html', function(err, index) {

    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(index);
    res.end();

  });

}).listen(80);
