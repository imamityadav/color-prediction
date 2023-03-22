<?php
include("include/connection.php");
$envelopeQuery=mysqli_query($con,"select * from `tbl_envelop` where `rechargestatus`='1'");
while($envelopeResult=mysqli_fetch_array($envelopeQuery))
{
$userid=$envelopeResult['userid'];
$createdate=$envelopeResult['createdate'];	
$chksummery=mysqli_query($con,"select sum(amount)as sumtotal from `tbl_walletsummery` where `userid`='".$userid."' and `actiontype`='recharge' and `createdate`>'".$createdate."'");
$summeryResult=mysqli_fetch_array($chksummery);
$sumtotal=$summeryResult['sumtotal'];
if($sumtotal>=500)
{
$updateenvelopeQuery= mysqli_query($con,"UPDATE `tbl_envelop` SET `rechargestatus` = '0' WHERE `userid`= '$userid'");	
$updatewalletQuery= mysqli_query($con,"UPDATE `tbl_wallet` SET `envelopestatus` = '0' WHERE `userid`= '$userid'");	
	}		
}
?>