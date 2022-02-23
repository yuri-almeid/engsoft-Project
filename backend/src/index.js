const express = require('express');
const cors = require('cors');
const routes = require('./routes');
const bodyParser = require('body-parser');

const app = express();

app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(routes);



app.listen(3333, () => {
    console.log('Servidor rodando...')
});