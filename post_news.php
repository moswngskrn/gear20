<?php include "./DBtest.php"; ?>
<?php
if($_POST['title']){
    date_default_timezone_set('UTC');
    $query = 'INSERT INTO news(title,detail,url_image,upload_at) VALUES("'.$_POST['title'].'","'.$_POST['detail'].'","'.$_POST['url_image'].'","'.date("Y-m-d").'")';
    if(mysql_query($query)){
        echo '<h1>New record created successfully<h1>';
    } else {
        echo '<h1>Error: '.$query.'<h1>';
    }
}
?>

<form method="post">
    <input type="text" name="title" placeholder="หัวข้อข่าว" required><br>
    <textarea name="detail" cols="100" rows="20"></textarea><br>
    <input type="text" name="url_image" placeholder="ที่อยู่รูปภาพ" required><br>
    <button>เพิ่มข้อมูล</button>
</form>
