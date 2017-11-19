<?php
$host = "localhost";
$userhost = "root";
$passhost = "12345678";
$database = "gear20";
$conn = mysql_connect($host,$userhost,$passhost);
if(!$conn){
	echo "ไม่สามารถเชื่อมต่อฐานข้อมูลได้";
}
mysql_query("use $database");
mysql_query("SET character_set_results=utf8");
mysql_query("SET character_set_client=utf8");
mysql_query("SET character_set_connection=utf8");
?>