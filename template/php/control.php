<?php
    include "connect.php";
    if(isset($_POST['save'])){
        $username=$_POST['username'];
        $password=md5($_POST['password']);
        $address=$_POST['address'];
        $phone=$_POST['phone'];
        $email=$_POST['email'];
        $query = "insert into nguoidung values('$username','$password','$address','$phone','$email')";
        $connect->query($query);
        header("Location:form.php");
    }
    else if(isset($_GET['delete'])){
        $username = $_GET['delete'];
        $query = "delete from nguoidung where username = '$username'";
        $connect->query($query);
        header("Location:form.php");
    }
    else if(isset($_POST['update'])){
        $username=$_POST['username'];
        $password=md5($_POST['password']);
        $address=$_POST['address'];
        $phone=$_POST['phone'];
        $email=$_POST['email'];
        $query = "update nguoidung set password='$password', address='$address', phone='$phone', email='$email' where username = '$username'";
        $connect->query($query);
        header("Location:form.php");
    }
    else{
        echo("Lỗi");
    }

    
?>