<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php 
    session_start();
    ob_start();
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>หน้าแรก</title>
        <script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <style type="text/css">
            <?php include "css/Style.css"; ?>
            <?php include "css/slider-show.css"; ?>
        </style>
        
    </head>
    <body>
        <div id="container">
            <div class="header">
                <?php include 'menu.php'; ?>
            </div>
            
            <div class="content">  
                <div class="banner">
                    <?php include 'slidershow-home.php'; ?>
                </div>
                <div class="show_major">
                    <a href="detail_major.php?major=1">
                        <div class="box_major">
                            <img src="image/icon/civil_eng.png">
                            <p>วิศวกรรมโยธา</p>
                        </div>
                    </a>
                    <a href="detail_major.php?major=2">
                        <div class="box_major">
                            <img src="image/icon/indus_eng.png">
                            <p>วิศวกรรมอุตสาหการ</p>
                        </div>
                    </a>
                    <a href="detail_major.php?major=3">
                        <div class="box_major">
                            <img src="image/icon/mech_eng.png">
                            <p>วิศวกรรมเครื่องกล</p>
                        </div>
                    </a>
                    <a href="detail_major.php?major=4">
                        <div class="box_major">
                            <img src="image/icon/elec_eng.png">
                            <p>วิศวกรรมไฟฟ้า</p>
                        </div>
                    </a>
                    <a href="detail_major.php?major=5">
                        <div class="box_major">
                            <img src="image/icon/com_eng.png">
                            <p>วิศวกรรมคอมพิวเตอร์</p>
                        </div>
                    </a>
                    <a href="detail_major.php?major=6">
                        <div class="box_major">
                            <img src="image/icon/mate_eng.png">
                            <p>วิศวกรรมวัสดุ</p>
                        </div>
                    </a>
                    <a href="detail_major.php?major=7">
                        <div class="box_major">
                            <img src="image/icon/envi_eng.png">
                            <p>วิศวกรรมสิ่งแวดล้อม</p>
                        </div>
                    </a>
                    <a href="detail_major.php?major=8">
                        <div class="box_major">
                            <img src="image/icon/chem_eng.png">
                            <p>วิศวกรรมเคมี</p>
                        </div>
                    </a>
                   
                </div>
            </div>
            
            <div class="footer">
                <?php include 'footer.php'; ?>
            </div>
        </div>
        <script type="text/javascript">
            <?php include "js/main.js"?>
            <?php include "js/slidershow-home.js"?>
        </script>
    </body>
</html>
