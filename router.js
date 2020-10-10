var express = require("express");
var router = express.Router();
const mysql = require("mysql");

//DB Connection
const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "portfoliodb",
  multipleStatements: true,
});

//Connect to DB
con.connect((err) => {
  if (err) {
    console.log("Error connecting to DB");
    return;
  }
  console.log("DB Connection established");
});

// Default page
router.get("/", function (req, res) {
  res.send("Hello");
});

module.exports = router;
