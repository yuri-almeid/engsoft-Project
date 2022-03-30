const app = require('./server');

app.get('/test', (req, res) => {
  res.send({ response: 'Sucess' });
});

app.listen(3000, () => {
  console.log("Server started on port 3000 🔥");
});
