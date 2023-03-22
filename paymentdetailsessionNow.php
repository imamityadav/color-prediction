<?php
ob_start();
session_start();
include("include/connection.php");
if(isset($_POST['action'])=="paydetail")
{ 
$name=$_POST['name'];
$mobile=$_POST['mobile'];
$email=$_POST['email'];
$finalamount=$_POST['finalamount'];


@$_SESSION['name']=$name;
@$_SESSION['mobile']=$mobile;
@$_SESSION['email']=$email;
@$_SESSION['finalamount']=$finalamount;
echo"1";
}else{echo"0";}
?>