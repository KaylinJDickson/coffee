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

mysql_query ("SELECT products.name as name, products.price as price, package.name as package FROM composition INNER JOIN products ON composition.products_id = products.products_id INNER JOIN package ON composition.package_id = package.package_id;");

for ($i = 0; $i < mysql_num_rows($rows); $i++)

       {
           $name = mysql_result($rows, $i , "name");
           $price = mysql_result($rows, $i , "price");
           $package = mysql_result($rows, $i , "package");
    
           
       
           echo "<tr class='package'>";
           echo "<td>$name</td>";
           echo "<td>$price</td>";
           echo "<td>$products</td>";
           echo "<td><a href= 'purchasepage.php'<button>PURCHASE</button></a></td>";
           echo "</tr>";
}

   

?>
<html>
      <head><h1>Art Supply Store</h1>
    <link rel="stylesheet" href="artsupply.css">

    
    <nav>
                   <a href="Artsupplystore.php">Products</a>
                   <a href="packagepage.php">Packages</a>
                   <a href="purchasepage.php">Purchase</a>
                   <a href="histroy.php">View History</a>
    </nav></head>
<body>
<h1>Packages</h1>
    <table>
           <tr>
             <th>Image</th>
             <th>name</th>
               </tr>
        <br>
     <?php
    
    $rows = mysql_query("SELECT * FROM package;");

       for ($i = 0; $i < mysql_num_rows($rows); $i++)

       {
            $price = mysql_result($rows, $i , "name");
    
           echo "<tr class='prackage'>";
           echo "<td>$name</td>";
           echo "</tr>";
}



     ?>
    <br>
      
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
        
    </table>
      </body>
</html>