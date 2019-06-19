var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "1steger1",
  database: "icecream_DB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  // createProduct();
});

function displayItems() {
  connection.query(
    "SELECT item_id, product_name, price, stock_quantity from products where stock_quantity>0",
    function(err, res) {
      if (err) throw err;
      console.log("Id \t Name \t Price \t Quantity\n");
      for (var i = 0; i < res.length; i++) {
        console.log(
          res[i].item_id + "\t" +
          res[i].product_name + "\t" +
          res[i].price + "\t" +
          res[i].stock_quantity + "\n"
        );
        
      }
      displayQuestions(res.length);
    }
  )
}

displayItems();