<?php 
ob_start();
session_start();
include("include/connection.php");

@$userid=$_POST['userid'];
@$type=$_POST['type'];
@$value=$_POST['value'];
@$counter=$_POST['counter'];
@$inputgameid=$_POST['inputgameid'];
@$finalamount=$_POST['finalamount'];
@$tab=$_POST['tab'];
@$presalerule=$_POST['presalerule'];


if($userid=="" || $type=="" || $inputgameid=="" || $finalamount=="")
{
echo"2";
//check empty
}else{
if($counter<30)
{ echo"3";
//check counter
}else if($finalamount==0)
{
	echo"4";
//check if amount 0	
	}
else if($finalamount<10){
	echo"5";
	//check if amount below 10
	}else
{
$chkwallet=mysqli_query($con,"select `amount` from `tbl_wallet` where amount >= $finalamount and`userid`='".$userid."'");
$chkwalletRow=mysqli_num_rows($chkwallet);	
$chkwalletResult=mysqli_fetch_array($chkwallet);
if($chkwalletRow==''){echo"6";}else{	
$sql= mysqli_query($con,"INSERT INTO `tbl_betting` (`userid`, `periodid`, `type`,`value`,`amount`,`tab`,`acceptrule`) VALUES ('".$userid."','".$inputgameid."','".$type."','".$value."','".$finalamount."','".$tab."','".$presalerule."')");

//=====================transaction==================================================
$sql= mysqli_query($con,"INSERT INTO `tbl_order`(`userid`,`transactionid`,`amount`,`status`) VALUES ('".$userid."','".$inputgameid."','".$finalamount."','1')");
@$orderid=mysqli_insert_id($con);

$sql3= mysqli_query($con,"INSERT INTO `tbl_walletsummery`(`userid`,`orderid`,`amount`,`type`,`actiontype`) VALUES ('".$userid."','".$orderid."','".$finalamount."','debit','join')");

$walletbalance=wallet($con,'amount',$userid);	
$finalbalanceDebit=$walletbalance-$finalamount;	
$sqlwallet= mysqli_query($con,"UPDATE `tbl_wallet` SET `amount` = '".$finalbalanceDebit."' WHERE `userid`= '".$userid."'");	

//=====================transaction end==============================================
  userpromocode($con,$userid,user($con,'code',$userid),$finalamount,$inputgameid);//===bonus calculation


echo"1~".wallet($con,'amount',$userid);
}

	}
}
?>