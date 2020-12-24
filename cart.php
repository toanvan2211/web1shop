<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="abc">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
        session_start();                    
        $arrayProduct = array();
        $arrayProductAmmount = array();
        include "admin/php/connect.php";
        $queryCategory = "select * from danhmuc";
        $dataCategory = $db->query($queryCategory);
        $categoryId="";
        $categoryName="";
        $productIdToAdd = "";
        $arrayProduct = $_SESSION['arrayProduct'];
        $arrayProductAmmount = $_SESSION['arrayProductAmmount'];
        if(isset($_GET['productId'])){
            $productIdToAdd = $_GET['productId'];
            if(in_array($productIdToAdd, $arrayProduct)){
                $index = array_search($productIdToAdd,$arrayProduct);
                $arrayProductAmmount[$index]+=1;
                $_SESSION['arrayProduct']= $arrayProduct;
                $_SESSION['arrayProductAmmount']= $arrayProductAmmount;
            }
            else{          
                array_push($arrayProduct, $productIdToAdd);
                array_push($arrayProductAmmount, 1);            
                $_SESSION['arrayProduct']= $arrayProduct;
                $_SESSION['arrayProductAmmount']= $arrayProductAmmount;
            }
        }

    ?>
    <div class="containter">
        <div class="header">            
            <div class="logo">
                <img class="logo-shop" src="img/logoshop.png" alt="logo shop">
                <img class="background-logo-img" src="img/rainbow.gif" alt="background gif">     
                <img class="decor-right" src="img/decor-right.png" alt="">           
            </div>
            <div class="shop-name">
                <h1><span>N</span>avosi Shop</h1>
            </div>
        </div>
        <div class="menu">
            
            <ul class="main-menu">
                <li><a style="color:red;" href="index.php">Trang chủ</a></li>
                <?php
                    while($rowCategory=$dataCategory->fetch_assoc()):
                ?>
                    <li><a href="categoryshop.php?categoryId=<?php echo $rowCategory["categoryId"]?>"><?php echo $rowCategory["categoryName"] ?></a></li>
                <?php
                    endwhile;
                ?>
                <li><a style="color:red;" href="cart.php">Giỏ hàng</a></li>
                <?php
                    
                    $checkLogin="";
                    if($_SESSION['loggedin'] == false){
                        echo '<li><a style="color:green;" href="admin/login.php">Đăng nhập</a></li>';
                    }
                    else{
                        echo '<li><a style="color:green;" href="admin/logout.php">Đăng xuất</a></li>';
                    }
                ?>
            </ul>
        </div>
        <div class="content">
            <div class="left-cart">
                <h2>Giỏ hàng của bạn</h2>
                <table>
                    <tr>
                        <th>STT</th>
                        <th>Mã sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Đơn giá</th>
                        <th>Số lượng</th>
                        <th>Loại hàng</th>
                        <th>Đơn vị tính</th>
                    </tr>
                    
                    <?php
                        foreach($_SESSION['arrayProduct'] as $key=>$value){

;
                            
                            $productAmount = $arrayProductAmmount[$key];    

                            $queryCartProduct = "select * from sanpham where productId = '$value'";
                            $dataCartProduct = $db->query($queryCartProduct);
                            $rowCartProduct = $dataCartProduct->fetch_assoc();

                            $productName = $rowCartProduct['productName'];
                            $productPrice = $rowCartProduct['productPrice'];
                            $productType = $rowCartProduct['productType'];

                            $CartcategoryId = $rowCartProduct['categoryId'];
                            $queryCartCategory = "select * from danhmuc where categoryId = '$CartcategoryId'";
                            $dataCartCategory = $db->query($queryCartCategory);
                            $rowCartCategory = $dataCartCategory->fetch_assoc();

                            $productCategoryName = $rowCartCategory['categoryName'];

                            echo "<tr>
                                    <td>" .$key."</td>                                                                       
                                    <td>" .$value."</td>
                                    <td>" .$productName."</td>
                                    <td>" .$productPrice. "</td>
                                    <td><input value='".$productAmount."' type='number'></td>
                                    <td>" .$productCategoryName."</td>
                                    <td>" .$productType."</td>
                                </tr>";
                        }
                    ?>
                </table>
                <a href="cart.php">
                    <button id="btn-Order">Cập nhật giỏ hàng</button>
                </a>
            </div>
            <div class="right-cart">
                <p class="total-cost">VND</p>
                <a href="">
                    <button id="btn-Order">Đặt hàng</button>
                </a>
                <a href="index.php">
                    <button id="btn-Order">Mua tiếp</button>
                </a>
            </div>
        </div>
        <div class="footer">
            <p class="info">date created:12/8/2020 <br>by: toanvan</p>
        </div>
    </div>
</body>
</html>