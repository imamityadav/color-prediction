<?php 
ob_start();
session_start();
include("include/connection.php");

@$name=$_POST['name'];
@$email=$_POST['email'];
@$mobile=$_POST['mobile'];
@$walletbalance=wallet($con,'amount',$userid);
@$userid=$_POST['userid'];
@$action=$_POST['action'];
$today = date("Y-m-d H:i:s");
@$amount=100;
if($action=="envelope")
{
	

$chkbankdetailQuery=mysqli_query($con,"select * from `tbl_envelop` where `userid`='".$userid."'");
$bankdetailRows=mysqli_num_rows($chkbankdetailQuery);
if($bankdetailRows=='')
{
$withdrawalsql= mysqli_query($con,"INSERT INTO `tbl_envelop`(`userid`,`name`,`email`,`mobile`,`amount`,`status`,`rechargestatus`,`createdate`) VALUES ('".$userid."','".$name."','".$email."','".$mobile."','".$amount."','1','1','".$today."')");

$sql= mysqli_query($con,"INSERT INTO `tbl_order`(`userid`,`transactionid`,`amount`,`status`) VALUES ('".$userid."','envelope','".$amount."','1')");
@$orderid=mysqli_insert_id($con);


$sql3= mysqli_query($con,"INSERT INTO `tbl_walletsummery`(`userid`,`orderid`,`amount`,`type`,`actiontype`,`createdate`) VALUES ('".$userid."','".$orderid."','".$amount."','credit','envelope','".$today."')");

$walletbalance=wallet($con,'amount',$userid);	
$finalbalanceCredit=$walletbalance+$amount;	
$sqlwallet= mysqli_query($con,"UPDATE `tbl_wallet` SET `amount` = '$finalbalanceCredit',`envelopestatus`='1' WHERE `userid`= '$userid'");	
echo"1";	
	
	}else{echo"2";}//bank detail chk
	
	
	
	
}
?>