<?php
$status=$_POST["status"];
$firstname=$_POST["firstname"];
$amount=$_POST["amount"];
$txnid=$_POST["txnid"];
$posted_hash=$_POST["hash"];
$key=$_POST["key"];
$productinfo=$_POST["productinfo"];
$email=$_POST["email"];
$salt="";

// Salt should be same Post Request 

If (isset($_POST["additionalCharges"])) {
       $additionalCharges=$_POST["additionalCharges"];
        $retHashSeq = $additionalCharges.'|'.$salt.'|'.$status.'|||||||||||'.$email.'|'.$firstname.'|'.$productinfo.'|'.$amount.'|'.$txnid.'|'.$key;
  } else {
        $retHashSeq = $salt.'|'.$status.'|||||||||||'.$email.'|'.$firstname.'|'.$productinfo.'|'.$amount.'|'.$txnid.'|'.$key;
         }
         
         @$array=$_POST;
@$userid=$_SESSION['frontuserid'];
@$transactionid=str_replace("pay_","",$array['txnid']);
@$amt=$array['amount'];
@$famt=$amt*minamountsetting($con,'rechargebonus')/100;
@$amount=$amt+$famt;
$chkorder=mysqli_query($con,"select * from `tbl_order` where `transactionid`='".$transactionid."'");
$chkorderRow=mysqli_num_rows($chkorder);
$today = date("Y-m-d H:i:s");
if($chkorderRow==''){
$sql= mysqli_query($con,"INSERT INTO `tbl_order`(`userid`,`transactionid`,`amount`,`status`) VALUES ('".$userid."','".$transactionid."','".$amt."','1')");
@$orderid=mysqli_insert_id($con);

$sql3= mysqli_query($con,"INSERT INTO `tbl_walletsummery`(`userid`,`orderid`,`amount`,`type`,`actiontype`,`createdate`) VALUES ('".$userid."','".$orderid."','".$amount."','credit','recharge','".$today."')");

$walletbalance=wallet($con,'amount',$userid);	
$finalbalanceCredit=$walletbalance+$amount;	
$sqlwallet= mysqli_query($con,"UPDATE `tbl_wallet` SET `amount` = '$finalbalanceCredit' WHERE `userid`= '$userid'");
 $refcode=user($con,'code',$userid);
invitebonus($con,$userid,$refcode);
unset($_SESSION["name"]);
unset($_SESSION["mobile"]);
unset($_SESSION["email"]);
unset($_SESSION["finalamount"]);
}
         
         
		 $hash = hash("sha512", $retHashSeq);
       if ($hash != $posted_hash) {
	       echo "Invalid Transaction. Please try again";
		   } else {
          echo "<h3>Thank You. Your order status is ". $status .".</h3>";
          echo "<h4>Your Transaction ID for this transaction is ".$txnid.".</h4>";
          echo "<h4>We have received a payment of Rs. " . $amount . ". Your Recharge was successful..</h4>";
		   }
		   
		        

		   
?>	