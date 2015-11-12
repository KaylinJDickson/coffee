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

class Package
     {
         public $name;
         public $products;
     }

class Product
     {
         public $name;
         public $price;
     }

if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    $name = test_input($_POST["name"]);
    

    
     $rows = mysql_query("SELECT * FROM package;");

       for ($i = 0; $i < mysql_num_rows($rows); $i++)

       {
            $price = mysql_result($rows, $i , "name");
    
           echo "<tr class='package'>";
           echo "<td>$name</td>";
           echo "</tr>";
       }
}

   //$query = "SELECT * FROM package WHERE name = 'Acrylic style'";
//$query_run = mysql_query ($query);

//$price= 0;
//while ($num = mysql_fretch_assoc ($query_run))

?>
<html>
      <header><h1>Art Supply Store</h1>
    <link rel="stylesheet" href="artsupply.css">

    
    <nav>
        <a href="home.php">Home</a>
                   <a href="Artsupplystore.php">Products</a>
                   <a href="packagepage.php">Packages</a>
                   <a href="purchasepage.php">Purchase</a>
                   <a href="history.php">View History</a>
    </nav></header>
<body>
<h2>Packages</h2>
    </br>
    <table>
           <tr>
             <th>Name</th>
            <th>Price</th>
            <th>Products</th>
               <th></th>
               </tr>
      <?php
    $rows = mysql_query("SELECT products.name as name, products.price as price, package.name as package FROM composition INNER JOIN products ON composition.products_id = products.products_id INNER JOIN package ON composition.package_id = package.package_id;");

    for ($i = 0; $i < mysql_num_rows($rows); $i++)

       {
           $name = mysql_result($rows, $i , "name");
           $price = mysql_result($rows, $i , "price");
           $package = mysql_result($rows, $i , "package");
    
           
       
           echo "<tr class='package'>";
           echo "<td>$name</td>";
           echo "<td>$price</td>";
           echo "<td>$package</td>";
           echo "<td><a href= 'purchasepage.php'<button>PURCHASE</button></a></td>";
           echo "</tr>";
    }
       ?>
  
        
    </table>
    <form action="purchasepage.php" method="POST">
             <label>Package Name</label>
             <input name="package_name">
             <span class="errortext">
             <?php
                echo $flagError;
             ?>
            </span>
     
             <input type="submit" name="submit" value="Purchase">
        </form>
      </body>
</html>
<?php
    mysql_close();
?>