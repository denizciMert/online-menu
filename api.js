const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");
const fs = require("fs");

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

const configLines = fs.readFileSync("db/db.txt", "utf8").split("\n");

const config = {
  host: configLines[0].split("=")[1].trim(),
  user: configLines[1].split("=")[1].trim(),
  password: configLines[2].split("=")[1].trim(),
  database: configLines[3].split("=")[1].trim()
};

// MySQL Connection
const db = mysql.createConnection(config);

db.connect((err) => {
    if (err) {
        console.error("Error connecting to MySQL:", err);
        return;
    }
    console.log("Connected to MySQL database");
});
  
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});

// Get all Categories
app.get("/categories", (req, res) => {
  db.query("SELECT * FROM cafe_menu.categories", (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

// Get all Alcohols
app.get("/alcohols", (req, res) => {
    db.query("SELECT * FROM cafe_menu.alcohols", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});

// Get all Appetizers
app.get("/appetizers", (req, res) => {
    db.query("SELECT * FROM cafe_menu.appetizers", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});

// Get all Breakfasts
app.get("/breakfasts", (req, res) => {
    db.query("SELECT * FROM cafe_menu.breakfasts", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});

// Get all Cocktails
app.get("/cocktails", (req, res) => {
    db.query("SELECT * FROM cafe_menu.cocktails", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});

// Get all Coffees
app.get("/coffees", (req, res) => {
    db.query("SELECT * FROM cafe_menu.coffees", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});

// Get all Fast Foods
app.get("/fastfoods", (req, res) => {
    db.query("SELECT * FROM cafe_menu.fastfoods", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});

// Get all Main Courses
app.get("/maincourses", (req, res) => {
    db.query("SELECT * FROM cafe_menu.maincourses", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});

// Get all Soft Drinks
app.get("/softdrinks", (req, res) => {
    db.query("SELECT * FROM cafe_menu.softdrinks", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});

// Get all Teas
app.get("/teas", (req, res) => {
    db.query("SELECT * FROM cafe_menu.teas", (err, results) => {
      if (err) throw err;
      res.json(results);
    });
});
