<?php
     // Check your database config:
     $username="root";
     $password="mysql";
     $database="Art Supply Store";
     mysql_connect(localhost,$username,$password);
     @mysql_select_db($database) or die("Database Error");

class Products
     {
         public $Image;
         public $name;
         public $description;
         public $category;
         public $price;
         public $stock;
         public $supplier_id;
     }

    function sanitise($data)
    {
           $data = trim($data);
           $data = stripslashes($data);
           $data = htmlspecialchars($data);
           return $data;
    }

if ($_POST['category'] !=null)

{ 
    $category = $_POST['category'];
    $rows = mysql_query("SELECT * FROM products WHERE category='$category';");
}
    else
    {
    
       $rows = mysql_query("SELECT * FROM products;");
    }

?>
<html>
      <header><h1>Art Supply Store</h1>
<br>
          <nav>
               <a href="home.php">Home</a>
                   <a href="Artsupplystore.php">Products</a>
                   <a href="packagepage.php">Packages</a>
                   <a href="purchasepage.php">Purchase</a>
                   <a href="history.php">View History</a>
    </nav>
    <link rel="stylesheet" href="artsupply.css"></header>
<body> 
   <form action="Artsupplystore.php" method="POST" >
       <label>Catergories</label>
       <select name='category'>
           <option>Paintbrushes</option>
           <option>Drawingmaterials</option>
           <option>Oilpaint</option>
           <option>Waterpaint</option>
            <option>Acrylicpaint</option>
       </select>
       <input type="submit" value="filter">
    </form>
    <table>
           <tr>
             <th>Image</th>
             <th>Name</th>
             <th>Description</th>
             <th>Category</th>
             <th>Price</th>
             <th>Stock</th>
             <th>Purchase</th>
               </tr>
        <br>
     <?php
    
       for ($i = 0; $i < mysql_num_rows($rows); $i++)

       {
           $Image = mysql_result($rows, $i, "Image");
           $name = mysql_result($rows, $i , "name");
           $description = mysql_result($rows, $i , "description");
           $category = mysql_result($rows, $i , "category");
            $price = mysql_result($rows, $i , "price");
            $stock = mysql_result($rows, $i , "stock");
           
       
           echo "<tr class='products'>";
           echo "<td><image src='$Image' alt='img'></td>";
           echo "<td>$name</td>";
           echo "<td>$description</td>";
           echo "<td>$category</td>";
           echo "<td>$price</td>";
           echo "<td>$stock</td>";
           echo "<td><a href= 'purchasepage.php'<button>PURCHASE</button></a></td>";
           echo "</tr>";
}
     ?>
    <br>
    
    </table>
      </body>
</html>
<?php
    mysql_close();
?>