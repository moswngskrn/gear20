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
                    <img src="image/banner/banner_massage.png">
                </div>
                <div class="title_page"><h1>สารจากผู้บริหาร</h1></div>
                
                <div class="massage">    
                <?php 
                    if($_GET['executive']){
                        echo '<div class="show_detail">';
                        $query = 'select * from massage where name = "'.$_GET['executive'].'"';
                        $data= mysql_query($query);
                        while($show = mysql_fetch_object($data)){
                            echo '<img src="'.$show->image_path.'">';
                            echo '<div>'
                            .'<h1>'.$show->name.'</h1>'
                            .'<h2>'.$show->rank.'</h2>'
                            . '<p>'.$show->massage.'</p>'
                            . '</div>';
                        }
                        echo '</div>';
                    } else {
                        $query = 'select * from massage';
                        $data= mysql_query($query);
                        while($show = mysql_fetch_object($data)){
                            echo '<a href="massage.php?executive='.$show->name.'"><div class="'.$show->class_name.'">'
                            . '<img src="'.$show->image_path.'">'
                            . '<h1>'.$show->name.'</h1>'
                            . '<p>'.$show->rank.'</p>'
                            . '</div></a>';
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