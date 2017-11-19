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
                <?php 
                    if($_GET['manage']== "a insert profile"){
                        include 'form_insert_profile.php';
                    } else {
                        echo '<h1>รายการจัดการ</h1>';
                        echo '<h2><a href="manage.php?manage=a insert profile">เพิ่มข้อมูลรายบุคคล</a></h2>';
                        echo '<h2><a href="post_news.php">เพิ่มข่าว</a></h2>';
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