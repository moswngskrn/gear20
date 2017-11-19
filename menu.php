<div class = "icon"><img src="eng_logo2.png" width = "150" height = "125"></div>

<div class="navbar">
    <ul>		
        <li class="">
            <div class="link"><a href="index.php">หน้าแรก</a></div>
        </li>
        <li class="">
            <div class="link"><a href="massage.php">สาส์นจากผู้บริหาร</a></div>
        </li>
        <li class="">
            <div class="link"><a href="gallery.php">รูปภาพกิจกรรม</a></div>
        </li>
        <li class="">
            <div class="link"><a href="news.php">ประชาสัมพันธ์</a></div>
        </li>
        <li class="">
            <div class="link"><a href="smo.php">สโมสรนิสิต</a></div>
        </li> 
        <li class="">
            <div class="link"><a href="search.php">ค้นหารายชื่อ</a></div>
        </li> 
        
        <?php 
            if ($_SESSION['user']=="user"){
                echo '<li><div class="link"><a href="edit_profile.php">แก้ไขข้อมูล</a></div></li>';
            } 
            else if ($_SESSION['user']=="admin") {
                echo '<li class="drop">'
                        . '<div class="link"><a href="admin.php">แก้ไข้</a></div>'
                        . '<ul class="drop-down">'
                            . '<li class=""><a href="admin.php?">รายการ 1</a></li>'
                            . '<li class=""><a href="admin.php?">รายการ 2</a></li>'
                        . '</ul>'
                    . '</li>';
            }
            else if ($_SESSION['user']=="super admin") {
                echo '<li class="drop">'
                        . '<div class="link"><a href="manage.php">จัดการ</a></div>'
                        . '<ul class="drop-down">'
                            . '<li class=""><a href="manage.php?manage=a insert profile">เพิ่มข้อมูลรายบุคคล</a></li>'
                            . '<li class=""><a href="#">เพิ่มข้อมูลจาก exal</a></li>'
                        . '</ul>'
                    . '</li>';
            }

         ?>
    </ul>
    <?php 
        if(!isset($_SESSION['user']))  {
            echo "<div class=\"menu_login\"><a href=\"login.php\">เข้าสู่ระบบ</a></div>";
        }
        else {
            echo "<div class=\"menu_login\"><a href=\"logout.php\">ออกจากระบบ</a></div>";
        }
    ?>
</div>
