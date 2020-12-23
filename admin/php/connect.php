<?php
/* $servername="localhost";
 $username="root";
 $password="";
 $database="web1shop";

 $connect = new mysqli($servername, $username, $password, $database);

 if ($connect->connect_error){
     die($connect->connect_error);
 }*/
?>

<?php
   define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'root');
   define('DB_PASSWORD', '');
   define('DB_DATABASE', 'web1shop');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

   if ($db->connect_error){
    die($db->connect_error);
}
?>