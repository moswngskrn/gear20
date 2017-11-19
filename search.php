<!doctype html>
<?php 
    session_start();
    ob_start();
?>
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
                    <img src="image/banner/banner_search.png">
                </div>
                <div class="title_page"><h1>ค้นหารายชื่อ</h1></div>
                
                content
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