<?php 
include("include/connection.php");
if(isset($_POST['action']))
{

$userid=$_POST['userid'];
$opassword=($_POST['opassword']);
$newpassword=$_POST['npassword'];
$cpassword=$_POST['cpassword'];

if(strlen($newpassword!==$cpassword)){echo "2";}else{
$sql="select * from `tbl_user` where `id`='".$userid."' and `password`='".md5($opassword)."'";
	$result=mysqli_query($con,$sql);
	$num=mysqli_num_rows($result);
	$line=mysqli_fetch_assoc($result);
	if($num!='')
	{
$sql2= "UPDATE `tbl_user` SET `password`= '".md5($cpassword)."' WHERE `id`='".$userid."'";
$query2=mysqli_query($con,$sql2);

	echo "1";
	
	
	}
	else
	{
echo "0";
	}
}
}
	?>