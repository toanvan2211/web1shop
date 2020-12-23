<?php
    include "connect.php";
    if(isset($_POST['save'])){
        $username=$_POST['username'];
        $password=md5($_POST['password']);
        $address=$_POST['address'];
        $phone=$_POST['phone'];
        $email=$_POST['email'];
        $permission=$_POST['permission'];
        $query = "insert into nguoidung values('$username','$password','$address','$phone','$email', $permission)";
        $db->query($query);
        header("Location:../user-control.php");
    }
    else if(isset($_GET['delete'])){
        $username = $_GET['delete'];
        $query = "delete from nguoidung where username = '$username'";
        $db->query($query);
        header("Location:../user-control.php");
    }
    else if(isset($_POST['update'])){
        $username=$_POST['username'];
        $password=md5($_POST['password']);
        $address=$_POST['address'];
        $phone=$_POST['phone'];
        $email=$_POST['email'];
        $permission=$_POST['permission'];
        $query = "update nguoidung set password='$password', address='$address', phone='$phone', email='$email', permission='$permission' where username = '$username'";
        $db->query($query);
        header("Location:../user-control.php");
    }
    else{
        echo $db->connect_error;
    }
?>