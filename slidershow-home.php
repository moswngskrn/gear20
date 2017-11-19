<div class="slideshow-container">

            <?php
                $allowed_types=array('jpg','jpeg','gif','png');
                $dir    ="image/slidershow-home/";
                $files1 = scandir($dir);
                $i = 1;
                foreach($files1 as $key=>$value){
                    if($key>1){
                        $file_parts = explode('.',$value);
                        $ext = strtolower(array_pop($file_parts));
                        if(in_array($ext,$allowed_types)){
                            
                            echo '<div class="mySlides fade" style="background-image: url(\''.$dir.$value.'\');">';
                            /*echo "<div class=\"numbertext\">".$i."</div>";*/
                            //echo '<img src="d'.$dir.$value.'" style="">';
                            //echo '<div class=\"text\">Caption '.$i.'</div>';
                            echo '</div>';
                            $i++;
                        }
                    }
                }
            ?>
    <a class="prev" onclick="plusSlide(-1)"><</a>
    <a class="next" onclick="plusSlide(1)">></a>
</div>
<br>

<div style="text-align:center">
  <?php
    for($j=1;$j<$i;$j++){
        echo "<span class=\"dot\" onclick=\"currentSlide(".$j.")\"></span> ";
    }
  ?>
</div>