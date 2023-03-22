<?php 
ob_start();
session_start();
include("include/connection.php");

@$userid=$_POST['userid'];
@$name=$_POST['name'];
@$ifsc=$_POST['ifsc'];
@$bank=$_POST['bank'];
@$account=$_POST['account'];
@$mobile=$_POST['mobile'];
@$email=$_POST['email'];
@$action=$_POST['action'];
@$editid=$_POST['editid'];
$today = date("Y-m-d H:i:s");

if($action=="bank")
{
	
if($editid=='')
{ 
$withdrawalsql= mysqli_query($con,"INSERT INTO `tbl_bankdetail`(`userid`,`name`,`ifsc`,`bankname`,`account`,`mobile`,`email`,`type`,`status`) VALUES ('".$userid."','".$name."','".$ifsc."','".$bank."','".$account."','".$mobile."','".$email."','".$action."','1')");

echo"1";	
}
else{
	//edit
}
}
else if($action=="upi")
{
	
if($editid=='')
{ 
$withdrawalsql= mysqli_query($con,"INSERT INTO `tbl_bankdetail`(`userid`,`name`,`ifsc`,`bankname`,`account`,`mobile`,`email`,`type`,`status`) VALUES ('".$userid."','".$name."','".$ifsc."','".$bank."','".$account."','".$mobile."','".$email."','".$action."','1')");

echo"1";	
}
else{
	//edit
}
}

if(isset($_POST['type']))
{
if($_POST['type']=='delete'){	
	$dellid=$_POST['id'];	
	$sqlDel = "Delete from `tbl_bankdetail` where `id` in ($dellid)";
	$querydel=mysqli_query($con,$sqlDel);
	if($querydel){echo "1";}else{echo "0";}
		}
}
?>