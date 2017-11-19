<?php include "./DBtest.php"; ?>
<?php 
    session_start();
    ob_start();
?>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>

        <script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>
        <style type="text/css">
            <?php include "css/Style.css"; ?>
        </style>
        
</head>

<body>

    <div id="container">
            <div class="header">
                <?php include 'menu.php'; ?>
            </div>
            
            <div class="content">  
                <div class="banner2">
                    <img src="image/banner/banner_gallery.jpg">
                </div>
                <div class="title_page"><h1>รูปภาพกิจกรรม</h1></div>
                
                <?php 
                if($_GET['album']&&$_GET['major']){
                    echo '<p class="p_album"> กิจกรรม > '.$_GET['major'].' > '.$_GET['album'].'<p><br>';
                    echo '<div class="show_picture">';
                    $query_image = "select * from image where album_id=".$_GET['album_id'];
                    $data_image = mysql_query($query_image);
                    while ($image = mysql_fetch_object($data_image)){
                        echo '<img src="'.$image->url.$image->image.'">';
                    }
                    echo '</div>';
                } else {
                    $query_album_category = "select * from album_category";
                    $data_album_category = mysql_query($query_album_category);
                    while($category = mysql_fetch_object($data_album_category)){
                        $data_album = mysql_query("select * from album where category_id=".$category->id);
                        if(mysql_num_rows($data_album)>0){
                            echo '<div class="show_activities" id="'.$category->name.'">';
                            echo '<p>กิจกรรม'.$category->name_thai.'</p>';
                            echo '<div id="act_slide">';
                            while ($album = mysql_fetch_object($data_album)){
                                echo '<a href="gallery.php?major='.$category->name_thai.'&album='.$album->name_thai.'&album_id='.$album->id.'">';
                                echo '<div class="box_act">';
                                echo '<div class="act" >';
                                echo '<img src="image/activities/'.$category->name.'/'.$album->name.'/'.$album->img_header.'">';
                                echo '</div>';
                                echo '<div class="title_box">';
                                echo $album->name_thai;
                                echo '</div>';
                                echo '</div>';
                                echo '</a>';
                            }
                            echo '</div>';
                            echo '<a class="act_prev" onclick="plusSlide(-1)"><</a>
                                <a class="act_next" onclick="plusSlide(1)">></a>';
                            echo '</div>';
                        }
                    }
                }
                ?>
            </div>
            <div class="footer">
                <?php include 'footer.php'; ?>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        <?php include "js/main.js"?>
        <?php include "js/slider-gallery.js"?>
    </script>
</body>
</html>