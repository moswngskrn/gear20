<?php include "./DBtest.php"; ?>
<?php 
    session_start();
    ob_start();
?>
<?php
if($_GET['profileID']){
    $profileID = $_GET['profileID'];
    $query = "DELETE FROM profile WHERE profileID= '".$profileID."' ";
    if(mysql_query($query)){
        if(mysql_num_rows(mysql_query("select * FROM profile WHERE profileID= '".$profileID."' "))==0) {
             echo json_encode($profileID);
        }
    }
}

die();

?>


