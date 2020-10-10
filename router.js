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

// Get image links or links of project by id
router.get("/projects/:id/:type", (req, res) => {
  const id = req.params.id;
  let type = req.params.type === "images" ? true : false; //if true, only get images

  //if :type is either images or links
  if (req.params.type === "images" || req.params.type === "links") {
    con.query(
      `SELECT * FROM ${links.table} WHERE ${links.project_id} = ?
        AND ${links.link_isimage} = ?`,
      [id, type],
      function (error, results) {
        if (error) throw error;
        res.json(results ? results : { message: "Not found" });
      }
    );
  } else {
    res.send("404");
  }
});

module.exports = router;
