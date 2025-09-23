const http = require('http');
const PORT = 8080;

const requestHandler = (req, res) => {
  res.end('Hello from AccuKnox demo container!');
};


const server = http.createServer(requestHandler);
server.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
