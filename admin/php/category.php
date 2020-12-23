<?php
    include "connect.php";
    if(isset($_POST['save'])){
        $categoryName=$_POST['categoryName'];
        $query = "insert into danhmuc values('','$categoryName')";
        $db->query($query);
        header("Location:../category-control.php");
    }
    else if(isset($_GET['delete'])){
        $categoryId = $_GET['delete'];
        $query = "delete from danhmuc where categoryId = '$categoryId'";
        $db->query($query);
        header("Location:../category-control.php");
    }
    else if(isset($_POST['update'])){
        $categoryId=$_POST['categoryId'];
        $categoryName=$_POST['categoryName'];
        $query = "update danhmuc set categoryName='$categoryName' where categoryId = '$categoryId'";
        $db->query($query);
        header("Location:../category-control.php");
    }
    else{
        echo $db->connect_error;
    }
?>