<?php
session_start();
ob_start();
?> 
﻿<?php include "./DBtest.php"; ?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>

        <script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>
        <style type="text/css">
            <?php include "css/Style.css"; ?>
            <?php include "css/slider-show.css"; ?>
        </style>
        
        <script>
            
        </script>
</head>

<body>
    <div id="container">
            <div class="header">
                <?php include 'menu.php'; ?>
            </div>
            
            <div class="content">  
                <div class="banner2">
                    <img src="image/banner/banner_login.png">
                </div>
                <div class="title_page"><h1>เข้าสู่ระบบสมาชิก</h1></div>
                <div class="login">
                <fieldset><legend>กรุณาเข้าสู่ระบบ</legend>
                    <form method="post">
                        <input type="text" name="login" placeholder="ชื่อผู้ใช้" required><br>
                        <input type="password" name="pswd" placeholder="รหัสผ่าน" required><br>
                        <button>เข้าสู่ระบบ</button>
                    </form>
                    <?php
                        if($_POST) {
                            $login = $_POST['login'];
                            $pw = $_POST['pswd'];
                            // SELECT DB bookyear
                            $sql = "SELECT userID, userPass, userStatus FROM user";
                            $result = mysql_query($sql);
                            
                            if(mysql_num_rows($result)>0){
                                
                                while($row = mysql_fetch_object($result)) {
                                    // check value 
                                    //echo "id: " . $row["userID"]. " - Name: " . $row["userPass"]. " " . $row["userStatus"]. "<br>";
                                    if(($login == $row->userID) && ($pw == $row->userPass)) {
                                        $_SESSION['user'] = $row->userStatus;
                                        $_SESSION['userID'] = $row->userID;
                                        header("location: index.php");
                                        ob_end_flush();
                                        exit;
                                    }
                                    else {
                                            echo '<h4 class="err">ท่านใส่ Login หรือ Password ไม่ถูกต้อง</h4>'; 
                                            //break;
                                    }
                                }
                            } else {
                                echo '<h4 class="err">ไม่มีข้อมูล user</h4>'; 
                            }  
                        }
                    ?>
                </fieldset>
                </div>
            </div>
            <script type="text/javascript">
                <?php include "js/main.js"?>
            </script>
            <div class="footer">
                <?php include 'footer.php'; ?>
            </div>
        </div>
    </div>
</body>
</html>

