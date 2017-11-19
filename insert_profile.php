
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>
<?php include "./DBtest.php"; ?>
<?php 
    session_start();
    ob_start();
?>
<?php
function randomPassword() {
    $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    $pass = array(); //remember to declare $pass as an array
    $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
    for ($i = 0; $i < 8; $i++) {
        $n = rand(0, $alphaLength);
        $pass[] = $alphabet[$n];
    }
    return implode($pass); //turn the array into a string
}
$userID = $_POST['userID'];
$userPass = randomPassword();
$userStatus = $_POST['userStatus'];
$fname= $_POST['fname'];
$name= $_POST['name'];
$lname= $_POST['lname'];
$nname= $_POST['nname'];
$brtday= $_POST['brtday'];
$quote= $_POST['quote'];
$pic= $_POST['fileUpload'];
$addr= $_POST['addr'];
$phone= $_POST['phone'];
$faceID= $_POST['faceID'];
$lineID= $_POST['lineID'];
$jobPos= $_POST['jobPos'];
$jobOff= $_POST['jobOff'];
$majorID= $_POST['majorID'];

//upload image
if(isset($_FILES['fileUpload']['name'])){
    $filename = $_FILES['fileUpload']['name'];
    $tmp = $_FILES['fileUpload']['tmp_name'];
    $majorName;
    $query = 'SELECT * FROM `major` WHERE majorID='.$majorID;
    $data_select_majorName = mysql_query($query);
    while($show = mysql_fetch_object($data_select_majorName)){
        $majorName = $show->majorName;
    }
    $pic = 'image/image_profile/'.$majorName.'/'.$filename;
    
    copy($tmp,$pic);
} else {
    echo 'ไม่สามารถอัพโหลดรูปได้';
}

//Insert user
$query = 'INSERT INTO user(userID,userPass,userStatus) VALUES('.$userID.',"'.$userPass.'","'.$userStatus.'")';
if(mysql_query($query)){
    echo '<p>ได้เพิ่มข้อมูลผู้ใช้งานใหม่เรียบร้อยแล้ว</p>';
} else {
    echo '<p>Error: ไม่สามารเพิ่มผู้ใช้ใหม่ได้</p>';
}

//Insert profile
$query = 'INSERT INTO `profile` (`nname`, `fname`, `name`, `lname`, `brtday`, `quote`, `pic`, `addr`, `phone`, `faceID`, `lineID`, `jobPos`, `jobOff`, `userID`, `majorID`) '
                       . 'VALUES("'.$nname.'","'.$fname.'","'.$name.'","'.$lname.'","'.$brtday.'","'.$quote.'","'.$pic.'","'.$addr.'","'.$phone.'","'.$faceID.'","'.$lineID.'","'.$jobPos.'","'.$jobOff.'",'.$userID.','.$majorID.')';
if(mysql_query($query)){
    echo '<p>ได้เพิ่มข้อมูลโปรไฟร์เรียบร้อยแล้ว</p>';
} else {
    echo '<p>Error: ไม่สามารเพิ่มข้อมูลโปรไฟร์ผู้ใช้ได้</p>';
}

echo '<p>ชื่อผู้ใช้งาน : '.$userID.'</p><p>รหัสผ่าน : '.$userPass.'</p>';

?>
<table>
    <tr>
        <td></td>
        <td></td>
        <td>ชื่อผู้ใช้</td>
        <td>คำนำหน้า</td>
        <td>ชื่อ</td>
        <td>นามสกุล</td>
        <td>ชื่อเล่น</td>
        <td>วันเกิด</td>
        <td>คำโดนๆ</td>
        <td>รูป</td>
        <td>ที่อยู่</td>
        <td>เบอร์โทร</td>
        <td>เฟสบุค</td>
        <td>ไลน์</td>
        <td>ที่ทำงาน</td>
        <td>ทำงานเกี่ยวกับ</td>
        <td>สาขา</td>
    </tr>
    <?php 
    $query = 'select * from profile where userID='.$userID;
    $data= mysql_query($query);
    while($show = mysql_fetch_object($data)){
        
    ?>
    <tr id="<?php echo $show->profileID; ?>">
        <td></td>
        <td>แก้ไข|<a  style="cursor:hand" class="delete-button btn btn-danger btn-sm"  data-delete="<?php echo $show->profileID; ?>">ลบ</a></td>
        <td><?php echo $show->userID; ?></td>
        <td><?php echo $show->fname; ?></td>
        <td><?php echo $show->name; ?></td>
        <td><?php echo $show->lname; ?></td>
        <td><?php echo $show->nname; ?></td>
        <td><?php echo $show->brtday; ?></td>
        <td><?php echo $show->quote; ?></td>
        <td><img src="<?php echo $show->pic; ?>" height="50px"></td>
        <td><?php echo $show->addr; ?></td>
        <td><?php echo $show->phone; ?></td>
        <td><?php echo $show->faceID; ?></td>
        <td><?php echo $show->lineID; ?></td>
        <td><?php echo $show->jobPos; ?></td>
        <td><?php echo $show->jobOff; ?></td>
        <td><?php echo $show->majorID; ?></td>
    </tr>
    <?php 
    }
    ?>
</table>

<script type="text/javascript">
//listen to a click even for the button
    $(document).ready(function () {
        $('.delete-button').click(function () {
            //this will be the id for the data to be deleted on the database
            var profileID = $(this).data('delete');
            $.ajax({
                type: "GET",
                cache: false,
                dataType: "json",
                url: "delete.php?profileID=" + profileID ,
                success: function (deletedID) {
                    $("tr#" + deletedID).remove();
                }, error: function (xhr, ajaxOptions, thrownError) {
                    alert("an error occured. delete was not successful :( ");
                }
            });
        });
    });

</script>

