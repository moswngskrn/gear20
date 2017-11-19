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
                <?php 
                    $query = 'select * from profile where userID='.$_GET['id'];
                    $data= mysql_query($query);
                    if(mysql_num_rows($data)>0){
                    while($show = mysql_fetch_object($data)){
                    echo '<div class="profile">
                            <div class="left">
                                <div class="image_fig">
                                    <img src="'.$show->pic.'"  onerror="this.src=\'image/image_profile/image_d.jpg\'">
                                </div>
                            </div>
                            <div class="right">
                                <div class="image_new">
                                    <img src="'.$show->pic.'"  onerror="this.src=\'image/image_profile/image_d.jpg\'">
                                </div>
                                <div class="deteail">
                                    <h1>'.$show->fname.' '.$show->name.' '.$show->lname.' ('.$show->nname.')</h1>
                                    <p>วันเกิด : '.$show->brtday.'</p>
                                    <p>ที่อยู่ : '.$show->addr.'</p>
                                    <p>เบอร์โทร : '.$show->phone.'</p>
                                    <p>facebook : '.$show->faceID.'</p>
                                    <p>line : '.$show->lineID.'</p>
                                    <p>ที่ทำงาน : '.$show->jobPos.'</p>
									<p>quote : '.$show->quote.'</p>
                                </div>
                            </div>
                        </div>';
                    }
                    }
                        
                        
                ?>
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