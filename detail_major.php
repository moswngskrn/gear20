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
			
				
				<?php
                echo '<div class="banner2">
                    <img src="image/banner/department_banner_'.$_GET['major'].'.png">
					</div>'
					
				//department_banner_3
				?>

				
				<div class="title_page"><h1>รายชื่อนิสิต</h1></div>
                <div class="deteail_major">
                <?php 
                    $query = 'select * from profile where majorID='.$_GET['major'];
                    $data= mysql_query($query);
                    if(mysql_num_rows($data)>0){
                        while($show = mysql_fetch_object($data)){
                            echo '<a href="profile.php?id='.$show->userID.'"><div class="a_box">'
                        . '<div class="a_image"><img src="'.$show->pic.'" onerror="this.src=\'image/image_profile/image_d.jpg\'"></div>'
                        . '<h4>'.$show->fname.' '.$show->name.' '.$show->lname.'</h4>'
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