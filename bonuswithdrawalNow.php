<?php 
ob_start();
session_start();
include("include/connection.php");

@$userid=$_POST['userid'];
@$bonusammount=$_POST['bonusammount'];
$bonusbalance=bonus($con,'amount',$userid);
@$action=$_POST['action'];
$today = date("Y-m-d H:i:s");

if($action=="bonus")
{
if($bonusbalance>=$bonusammount)	
{
$bonussql= mysqli_query($con,"INSERT INTO `tbl_bonuswithdrawal`(`userid`,`amount`,`createdate`) VALUES ('".$userid."','".$bonusammount."','".$today."')");
$sql= mysqli_query($con,"INSERT INTO `tbl_order`(`userid`,`transactionid`,`amount`,`status`) VALUES ('".$userid."','bonus','".$bonusammount."','1')");
@$orderid=mysqli_insert_id($con);
$sql3= mysqli_query($con,"INSERT INTO `tbl_walletsummery`(`userid`,`orderid`,`amount`,`type`,`actiontype`) VALUES ('".$userid."','".$orderid."','".$bonusammount."','credit','bonus')");

$walletbalance=wallet($con,'amount',$userid);	
$finalbalanceCredit=$walletbalance+$bonusammount;	
$sqlwallet= mysqli_query($con,"UPDATE `tbl_wallet` SET `amount` = '$finalbalanceCredit' WHERE `userid`= '$userid'");	

$finalbonusDedit=$bonusbalance-$bonusammount;
$sqlbonus= mysqli_query($con,"UPDATE `tbl_bonus` SET `amount` = '$finalbonusDedit' WHERE `userid`= '$userid'");	

echo"1~".$finalbonusDedit;	
}else{ echo"2";}	
	
}
?>