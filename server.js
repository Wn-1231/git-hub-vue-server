let http = require("http");

let users = [
  { id: 2222, name: "test111" },
  { id: 3333, name: "test2" },
  { id: 444, name: "test3" },
];

let server = http.createServer(function (req, res) {
  console.log(req.method, req.url);

  if (req.url == "/api/users") {
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.end(JSON.stringify(users));
  } else {
    res.end("Now Found!");
  }

});


server.listen(3000, () => {
  console.log("服务正在3000端口上启动!");
});
