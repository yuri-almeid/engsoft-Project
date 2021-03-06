const express = require("express");
const dotenv = require("dotenv");
const database = require("./config/database");
const routes = require("./routes/index.routes");
const app = express();

app.use(express.json());

dotenv.config();
database();

app.use("/api/users", routes)

module.exports = app;