<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản trị Navosi</title>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" type="image/png" href="../images/icons/favicon.ico"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    
    <div class="panel panel-warning">
        <div class="panel-body">
            <div class="btn-group">
                <button type="button" class="btn btn-primary btn-lg">Người dùng</button>
                <button type="button" class="btn btn-success btn-lg">Sản phẩm</button>
            </div>
        </div>        
    </div>
    <div class="left">
        <?php
            include "connect.php";
            $query = "select * from nguoidung";
            $data = $db->query($query);
            $username="";
            $pass="";
            $address="";
            $phone="";
            $email="";
        ?>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Permission</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    while($row=$data->fetch_assoc()):
                ?>
                    <tr>
                        <td><?php echo $row["username"] ?></td>
                        <td><?php echo $row['password'] ?></td>
                        <td><?php echo $row["address"] ?></td>
                        <td><?php echo $row["phone"] ?></td>
                        <td><?php echo $row["email"] ?></td>
                        <td><?php echo $row["permission"] ?></td>
                        <td>
                            <a href="control.php?delete=<?php echo $row["username"] ?>">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </a>
                            <a href="admin_control.php?edit=<?php echo $row["username"] ?>">
                                <button type="button" class="btn btn-success">Info</button>
                            </a>
                        </td>
                    </tr>
                <?php
                    endwhile;
                ?>
            </tbody>
        </table>
    </div>
    <div class="right">
        <div class="box-input">
            <h1 class="title" title="">Thông tin người dùng</h1>
            <form action="control.php" method="POST">
                <?php
                    if(isset($_GET['edit'])){
                        $username = $_GET['edit'];
                        $sql1 = "select * form nguoidung username = '$username'";
                        $data1 = $fb->query($query);
                        $row1 = $data1->fetch_assoc();
                        $pass = $row1['password'];
                        $address = $row1['address'];
                        $phone = $row1['phone'];
                        $email = $row1['email'];
                    }
                ?>
                <div class="textbox">
                    <i class="fas fa-user"></i>
                    <input type="text" id="username" name="username" value="<?php echo $username ?>" placeholder="User Name">
                </div>
                <div class="textbox">
                    <i class="fas fa-key"></i>
                    <input type="password" id="pass" name="password" value="<?php echo $pass ?>" placeholder="Password">
                </div>
                <div class="textbox">
                    <i class="far fa-envelope"></i>
                    <input type="email" id="email" name="email" value="<?php echo $email ?>" placeholder="Email">
                </div>
                <div class="textbox">
                    <i class="fas fa-mobile-alt"></i>
                    <input type="text" id="phone" name="phone" value="<?php echo $phone ?>" placeholder="Phone">
                </div>
                <div class="textbox">
                    <i class="far fa-address-card"></i>
                    <input type="text" id="address" name="address" value="<?php echo $address ?>" placeholder="Address">
                </div>
                <input type="submit" id="btn" value="Create" name="save" onclick="loiphone()">
                <input type="submit" id="btn" value="Update" name="update" onclick="loiphone()">

                <script>
                    function loiphone(){
                        var t = document.getElementById("username").value;
                        var reg_phone = /^[a-z0-9_-]{3,16}$/;
                        var my = reg_phone.exec(t);
                        if(!my){
                            document.getElementById("username").style.borderBottomColor ="#f02c25";
                            document.getElementById("username").style.borderBottomWidth ="3px"
                        }
                        else{
                            document.getElementById("username").style.borderBottomColor ="#3B5286";
                            document.getElementById("username").style.borderBottomWidth ="1px"
                        }
                    }
                </script>   
            </form>
        </div>
    </div>
</body>
</html>