const express = require('express');

const app = express()

app.get('/', (req, res) => {
  const now = new Date();
  const response = { time: now.toLocaleString() };
  res.json(response);
})

app.listen(8080, () => {
  console.log('Server running at http://localhost:8080/');
});
