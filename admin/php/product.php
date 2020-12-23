<?php
    include "connect.php";
    if(isset($_POST['save'])){
        $productName=$_POST['productName'];
        $categoryId=$_POST['categoryId'];
        $productDes=$_POST['productDes'];
        $productPrice=$_POST['productPrice'];
        $productType=$_POST['productType'];

        $target_dir = "../uploads/";
        $target_file = $target_dir . basename($_FILES["productImg"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        // Check if image file is a actual image or fake image
        $check = getimagesize($_FILES["productImg"]["tmp_name"]);        

        if (file_exists($target_file)) {
        echo "Sorry, file already exists.";
            $uploadOk = 0;
        }

        if($uploadOk){
            if (move_uploaded_file($_FILES["productImg"]["tmp_name"], $target_file)) {
                echo "The file ". htmlspecialchars( basename( $_FILES["productImg"]["name"])). " has been uploaded.";
                $img = $_FILES["productImg"]["name"];
                $query = "insert into sanpham values('','$productName','$categoryId','$productDes','$productPrice', '$productType', '$img')";
                $db->query($query);
                header("Location:../product-control.php");
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        }        
    }
    else if(isset($_GET['delete'])){
        $productId = $_GET['delete'];
        $query = "select * from sanpham where productId = '$productId'";
        $data = $db->query($query);
        $row = $data->fetch_assoc();
        $productImg = $row['productImg'];
        
        if (!unlink("../uploads/$productImg")) {  
            echo ("$productImg cannot be deleted due to an error");  
        }  
        else {  
            echo ("$productImg has been deleted");  
        }

        $query = "delete from sanpham where productId = '$productId'";
        $db->query($query);
        header("Location:../product-control.php");
    }
    else if(isset($_POST['update'])){
        $productId =$_POST['productId'];
        $productName=$_POST['productName'];
        $categoryId=$_POST['categoryId'];
        $productDes=$_POST['productDes'];
        $productPrice=$_POST['productPrice'];
        $productType=$_POST['productType'];

        $target_dir = "../uploads/";
        $target_file = $target_dir . basename($_FILES["productImg"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        // Check if image file is a actual image or fake image
        $check = getimagesize($_FILES["productImg"]["tmp_name"]);        

        if (file_exists($target_file)) {
        echo "Sorry, file already exists.";
            $uploadOk = 0;
        }

        if($uploadOk){
            
            if (move_uploaded_file($_FILES["productImg"]["tmp_name"], $target_file)) {
                echo "The file ". htmlspecialchars( basename( $_FILES["productImg"]["name"])). " has been uploaded.";
                $query = "select * from sanpham where productId = '$productId'";
                $data = $db->query($query);
                $row = $data->fetch_assoc();
                $productImg = $row['productImg'];

                // Use unlink() function to delete a file  
                if (!unlink("../uploads/$productImg")) {  
                    echo ("$productImg cannot be deleted due to an error");  
                }  
                else {  
                    echo ("$productImg has been deleted");  
                }

                $img = $_FILES["productImg"]["name"];
                $query = "update sanpham set productName='$productName', categoryId='$categoryId', productDes='$productDes', productPrice='$productPrice', productType='$productType', productImg='$img' where productId = '$productId'";
                $db->query($query);
                header("Location:../product-control.php");
            } else {
                echo "Sorry, there was an error uploading your file.";
            }

            
        }

    }
    else{
        echo $db->connect_error;
    }
?>