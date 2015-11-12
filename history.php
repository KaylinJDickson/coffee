<?php
     // Check your database config:
     $username="root";
     $password="mysql";
     $database="Art Supply Store";
     mysql_connect(localhost,$username,$password);
     @mysql_select_db($database) or die("Database Error");

  function sanitise($data)
    {
           $data = trim($data);
           $data = stripslashes($data);
           $data = htmlspecialchars($data);
           return $data;
    }


class Purchase
     {
        
         public $credit;
         public $item;
         public $stock;
         public $date_purchased;
    }



 if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    $post_purchase = new Purchase ();
  $credit = sanitise ($_POST ["purchase_credit"]);
     $post_purchase->item = sanitise ($_POST["purchase_item "]);
    $post_purchase->quantity = sanitise ($_POST["purchase_quantity"]);
    $post_purchase->date_purchased = sanitise ($_POST["purchase_date"]);
     


        $valid = true;
        $Errorcode = "";
        if (empty($post_purchase->credit))
        {
            $valid = false;
            $Errorcode = "card number empty";
        }
     
 $rows = mysql_query ("SELECT * purchase WHERE credit = $credit;");
     
     for ($i = 0; $i < mysql_num_rows($rows); $i++)
         
     {
         $credit = mysql_result ($rows, $i , "purchase_credit");
        $item = mysql_result ($rows, $i , "purchase_item");
         $quantity = mysql_result ($rows, $i , "purchase_quantity");
         $date_purchased = mysql_result ($rows, $i , "purchase_date");
         
         
           echo "<tr>";
           echo "<td>$credit</td>";
           echo "<td>$item</td>";
           echo "<td>$quantity</td>";
           echo "<td>$date_purchased</td>";
           echo "</tr>";
     
     }
 }
 

?>

<html>
      <header><h1>Art Supply Store</h1>
<link rel="stylesheet" href="artsupply.css">
  
          <nav>
              <a href="home.php">Home</a>
                   <a href="Artsupplystore.php">Products</a>
                   <a href="packagepage.php">Packages</a>
                   <a href="purchasepage.php">Purchase</a>
          </nav></header>
 <body>
     <h2>History details</h2>
     </br>
     <table>
     
           <tr>
             <th>Credit number</th>
             <th>Item</th>
             <th>Stock</th>
             <th>Date</th>
                 <th></th>
               </tr>
        
     </table>

<form action="history.php" method="POST" >
       <label>Credit card number</label>
       <input name="purchase_credit" >
       <input type="submit" name="submit" value="View">
    </form>
</body>
</html>
<?php
    mysql_close();
?>