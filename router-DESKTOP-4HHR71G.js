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
      console.log("Error connecting to Db");
      return;
    }
    console.log("DB Connection established");
  });