<?php
     // Check your database config:
     $username="root";
     $password="mysql";
     $database="Art Supply Store";
     mysql_connect(localhost,$username,$password);
     @mysql_select_db($database) or die("Database Error");

class Purchase
     {
        
         public $credit;
         public $item;
         public $stock;
         public $date_purchased;
    }

class Product
     {
        
         public $stock;
    }

 function sanitise($data)
    {
           $data = trim($data);
           $data = stripslashes($data);
           $data = htmlspecialchars($data);
           return $data;
    }

function credit($credit)
    {
          
           return (bool) preg_match(
        "/ˆ[0-9]{16}$/", $credit);
    }


if ($_SERVER["REQUEST_METHOD"] == "POST")
    
{
    $post_purchase = new Purchase ();
    $post_purchase->credit = sanitise ($_POST["purchase_credit"]);
    $post_purchase->item = sanitise ($_POST["purchase_item"]);
    $post_purchase->stock = sanitise ($_POST["purchase_stock"]);
    $post_purchase->date_purchased = sanitise ($_POST["purchase_date"]);
    


        $valid = true;
        $Errorcode = "";
        if (empty($post_purchase->credit))
        {
            $valid = false;
            $Errorcode = "card number empty";
        }
        //else if (!credit($post_purchase->credit))
        //    {
        //      $valid = false;
        //      $Errorcode = "Card format is invalid. PLease Insert only 16 digits!";

        //    }
    $rows = mysql_query ("INSERT INTO purchase (credit, item, quantity, date) VALUES ('$post_purchase->credit', '$post_purchase->item', $post_purchase->stock, '$post_purchase->date_purchased');");
    
    if ($valid)
    {
        mysql_query($query);
    }

}
    
?>
<html>
      <header><h1>Art Supply Store</h1>
    <link rel="stylesheet" href="artsupply.css">
<body>
    
    
    <nav>
        <a href="home.php">Home</a>
                   <a href="Artsupplystore.php">Products</a>
                   <a href="packagepage.php">Packages</a>
                   <a href="purchasepage.php">Purchase</a>
                    <a href="history.php">View History</a>
    </nav></header>
          <h2>Purchase</h2>
        
        <?php
        echo $query;
          ?>  
          
   <form action="purchasepage.php" method="POST" >
       <label>Credit Card Number</label>
       <input name="purchase_credit">
       <label>Item</label>
       <select id='purchase_item' name='purchase_item'>
          <?php

$rows = mysql_query("SELECT * FROM products;");
    
       for ($i = 0; $i < mysql_num_rows($rows); $i++)

       {
           $name = mysql_result($rows, $i , "name");
           $id = mysql_result($rows, $i , "id");
           $description = mysql_result($rows, $i , "description");
           $category = mysql_result($rows, $i , "category");
            $price = mysql_result($rows, $i , "price");
            $stock = mysql_result($rows, $i , "stock");
           
           echo "<option>$name</option>";
           
       }
     ?>
          

       </select>
       <label>Stock</label>
       <input name="purchase_stock">
        <label>Date</label>
       <input name="purchase_date">
       
       <span class='texterror'>
           <?php
   echo $Errorcode;
     ?>
       </span>
           
          
          
       <input type="submit" name="submit" value="Purchase">
    </form>
      </body>
</html>
<?php
    mysql_close();
?>