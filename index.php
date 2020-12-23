<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="abc">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php

        include "admin/php/connect.php";
        $queryCategory = "select * from danhmuc";
        $dataCategory = $db->query($queryCategory);
        $categoryId="";
        $categoryName="";

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
                    <li><a href=""><?php echo $rowCategory["categoryName"] ?></a></li>
                <?php
                    endwhile;
                ?>
                <li><a style="color:red;" href="index.php">Giỏ hàng</a></li>
            </ul>
        </div>
        <div class="content">
            <?php
                $queryCategory = "select * from danhmuc";
                $dataCategory = $db->query($queryCategory);
                while($rowCategory1=$dataCategory->fetch_assoc()):
            ?>
            <div class="module-item">
                <h2 class="module-title"><?php echo $rowCategory1["categoryName"] ?></h2>
                <div class="list-item">
                    <?php
                        $categoryId = $rowCategory1["categoryId"];
                        $queryProduct = "select * from sanpham where categoryId = '$categoryId'";
                        $dataProduct = $db->query($queryProduct);
                        while($rowProduct=$dataProduct->fetch_assoc()):
                    ?>
                    <div class="item">
                        <img class="product-img" src="admin/uploads/<?php echo $rowProduct["productImg"]?>" alt="Hình ảnh <?php echo $rowProduct["productName"] ?>">
                        <a class="product-name" href="chitietsanpham.php?productId=<?php echo $rowProduct["productId"] ?>"><p><?php echo $rowProduct["productName"] ?></p></a>
                        <p class="price"><?php echo number_format($rowProduct["productPrice"]) ?> VND</p>
                        <a class="buy" href=""><p>mua ngay</p></a>
                    </div>                   
                    <?php
                        endwhile;
                    ?>
                </div>
            </div>
            <?php
                endwhile;
            ?>
        </div>
        <div class="footer">
            <p class="info">date created:12/8/2020 <br>by: toanvan</p>
        </div>
    </div>
</body>
</html>