<?php 
ob_start();
session_start();
include("include/connection.php");

@$mobile=$_POST['mobile'];
@$email=$_POST['email'];
@$password=$_POST['password'];
@$rcode=$_POST['rcode'];
@$acceptTC=$_POST['remember'];
@$action=$_POST['action'];
$otpmobile=@$_SESSION["signup_mobilematched"];

if($action=="register")
{
  if(strlen($otpmobile!==$mobile)){echo"4";}else{
	$chkuser=mysqli_query($con,"select * from `tbl_user` where `mobile`='".$mobile."'");
	$userRow=mysqli_num_rows($chkuser);
if($userRow==''){
$chkrcode=mysqli_query($con,"select * from `tbl_user` where `owncode`='".$rcode."'");
	$codeRow=mysqli_num_rows($chkrcode);
	if($codeRow!=''){	
$sql= mysqli_query($con,"INSERT INTO `tbl_user` (`mobile`, `email`, `password`,`code`,`owncode`,`privacy`,`status`) VALUES ('".$mobile."','".$email."','".md5($password)."','".$rcode."','','".$acceptTC."','1')");
$userid=mysqli_insert_id($con);
$refcode=$userid.refcode();
$sql= mysqli_query($con,"UPDATE `tbl_user` SET `owncode` = '$refcode' WHERE `id`= '".$userid."'");
$sql2= mysqli_query($con,"INSERT INTO `tbl_wallet`(`userid`,`amount`,`envelopestatus`) VALUES ('".$userid."','20','0')");
$sql3= mysqli_query($con,"INSERT INTO `tbl_bonus`(`userid`,`amount`,`level1`,`level2`) VALUES ('".$userid."','0','0','0')");

	if($sql){
      unset($_SESSION["signup_mobilematched"]);
echo"1";}else{ echo"0";}
	}else{echo"3";}
	}else{ echo"2";}
}
}
?>