const express = require("express");
const router = express.Router();
const mysql = require("mysql");
const tables = require("./tables");

//Db tables and columns
const db = tables.db;
const projects = tables.projects;
const links = tables.links;

//DB Connection
const con = mysql.createConnection({
  host: db.host,
  user: db.user,
  password: db.password,
  database: db.database,
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

// CREATE, READ, EDIT, DELETE functions
// Get all projects
router.get("/projects", (req, res) => {
  con.query(
    `SELECT * FROM ${projects.table} ORDER BY ${projects.project_id} DESC`,
    function (error, results) {
      if (error) throw error;
      res.json(results);
    }
  );
});

// Get project by id
router.get("/projects/:id", (req, res) => {
  const id = req.params.id;
  con.query(
    `SELECT * FROM ${projects.table} WHERE ${projects.project_id} = ?`,
    id,
    function (error, results) {
      if (error) throw error;
      res.json(results ? results : { message: "Not found" });
    }
  );
});

module.exports = router;
