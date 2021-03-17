<?php
    session_start();
    $_SESSION['arrayProduct']=NULL;
    $_SESSION['arrayProductAmmount']=NULL;
    header("location: order.php"); 
?>