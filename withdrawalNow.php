<?php 
ob_start();
session_start();
include("include/connection.php");

@$userid=$_POST['userid'];
@$userammount=$_POST['userammount'];
@$optionsname=$_POST['optionsname'];
@$acid=$_POST['acid'];
@$walletbalance=wallet($con,'amount',$userid);
@$action=$_POST['action'];
$today = date("Y-m-d H:i:s");

if($action=="withdrawal")
{
	
if($walletbalance>=$userammount)
{ 
$chkbankdetailQuery=mysqli_query($con,"select * from `tbl_bankdetail` where `userid`='".$userid."'");
$bankdetailRows=mysqli_num_rows($chkbankdetailQuery);
if($bankdetailRows!='')
{
$chkwalletstatus=wallet($con,'envelopestatus',$userid);
//if($chkwalletstatus==1){ echo"4";}else{
$withdrawalsql= mysqli_query($con,"INSERT INTO `tbl_withdrawal`(`userid`,`amount`,`payout`,`payid`,`status`,`createdate`) VALUES ('".$userid."','".$userammount."','".$optionsname."','".$acid."','1','".$today."')");
$withdrawalid=mysqli_insert_id($con);
$sql= mysqli_query($con,"INSERT INTO `tbl_order`(`userid`,`transactionid`,`amount`,`status`) VALUES ('".$userid."','withdraw','".$userammount."','1')");
@$orderid=mysqli_insert_id($con);

$actiontype="withdraw~".$withdrawalid;
$sql3= mysqli_query($con,"INSERT INTO `tbl_walletsummery`(`userid`,`orderid`,`amount`,`type`,`actiontype`) VALUES ('".$userid."','".$orderid."','".$userammount."','debit','$actiontype')");

$walletbalance=wallet($con,'amount',$userid);	
$finalbalanceCredit=$walletbalance-$userammount;	
$sqlwallet= mysqli_query($con,"UPDATE `tbl_wallet` SET `amount` = '$finalbalanceCredit' WHERE `userid`= '$userid'");	
echo"1";	
//}
	}else{echo"2";}//bank detail chk
}else{echo"3";}
	
	
	
	
}
?>