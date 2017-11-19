<!doctype html>
﻿<?php include "./DBtest.php"; ?>
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
                <div class="new_user">
                    <fieldset><legend>สมัคสมาชิก</legend>
                        <form action="show_registor.php" method="post">
                            <p>ชื่อผู้ใช้งาน : </p><input type="text" name="userID" placeholder="ชื่อผู้ใช้" required><br>
                            <p>รหัสผ่าน : </p><input type="password" name="userPass" placeholder="รหัสผ่าน" required><br>
                            <p>สถานะ : </p><select name="majorID">
                                <option value="user">user</option>
                                <option value="admin">admin</option>
                                <option value="Superadmin">super admin</option>
                            </select><br>
                            <p>คำนำหน้าชื่อ : </p><select name="fname">
                                <option value="นาย">นาย</option>
                                <option value="นางสาว">นางสาว</option>
                            </select><br>
                            <p>ชื่อจริง : </p><input type="text" name="name" placeholder="ชื่อจริง" required><br>
                            <p>นามสกุล : </p><input type="text" name="lname" placeholder="นามสกุล" required><br>
                            <p>ชื่อเล่น : </p><input type="text" name="nname" placeholder="ชื่อเล่น" required><br>
                            <p>วันเกิด : </p><input type="text" name="brtday" placeholder="วันเกิด" required><br>
                            <p>quote : </p><input type="text" name="quote" placeholder="quote" required><br>
                            <p>รูปภาพ : </p><input type="text" name="pic" placeholder="รูปภาพ" required><br>
                            <p>ที่อยู่ : </p><input type="text" name="addr" placeholder="ที่อยู่" required><br>
                            <p>เบอร์โทรศัพท์ : </p><input type="text" name="phone" placeholder="เบอร์โทรศัพท์" required><br>
                            <p>Facebook : </p><input type="text" name="faceID" placeholder="Facebook" required><br>
                            <p>Line : </p><input type="text" name="lineID" placeholder="Line" required><br>
                            <p>ที่อยู่ที่ทำงาน : </p><input type="text" name="jobPos" placeholder="ที่อยู่ที่ทำงาน" required><br>
                            <p>jobOff : </p><input type="text" name="jobOff" placeholder="jobOff" required><br>
                            <p>สาขา : </p><select name="majorID">
                                <option value="1">สาขาวิศวกรรมโยธา</option>
                                <option value="2">สาขาวิศวกรรมอุตสาหการ</option>
                                <option value="3">สาขาเครื่องกล</option>
                                <option value="4">สาขาวิศวกรรมไฟฟ้า</option>
                                <option value="5">สาขาวิศวกรรมคอมพิวเตอร์</option>
                                <option value="6">สาขาวิศวกรรมวัสดุ</option>
                                <option value="7">สาขาวิศวกรรมสิ่งแวดล้อม</option>
                                <option value="8">สาขาวิศวกรรมเคมี</option>
                            </select><br>
                            <button>เข้าสู่ระบบ</button>
                        </form>
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