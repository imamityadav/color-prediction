<?php 
include("include/connection.php");
$now = date('Y-m-d h:i:s');
$sql1=mysqli_query($con,"INSERT INTO `test` (`name`) VALUES ('".$now."')");	
print_r($sql1);
?>