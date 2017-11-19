<?php include "./DBtest.php"; ?>
<?php 
    session_start();
    ob_start();
?>
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
                    <img src="image/banner/banner_new.png">
                </div>
                <div class="title_page"><h1>ประชาสัมพันธ์</h1></div>
                <div class="content_news">
                <?php 
                    if($_GET['detail']){
                        $query_detail = 'select * from news where id='.$_GET['detail'];
                        $data_detail = mysql_query($query_detail);
                        while($show = mysql_fetch_object($data_detail)){
                            echo '<img src="'.$show->url_image.'">'.'<br>'.$show->title.'<br>'.$show->upload_at.'<br>'.$show->detail;
                        }
                    } else {
                        $query = 'select * from news ORDER BY id DESC';
                        $data= mysql_query($query);
                        while($show = mysql_fetch_object($data)){
                            echo '<a href="news.php?detail='.$show->id.'">'
                                    . '<div class="news_box">'
                                        . '<div class="img_head_news">'
                                            . '<img src="'.$show->url_image.'">'
                                        . '</div>'
                                        . '<p>วันที่โพส : '.$show->upload_at.'</p>'
                                        . ''.$show->title.'<br>'
                                    . '</div>'
                                 . '</a>';
                        }
                            
                    }
                    
                ?>
                
                  
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