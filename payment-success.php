<?php 
ob_start();
session_start();
if($_SESSION['frontuserid']=="")
{header("location:login.php");exit();}?>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php include'head.php' ?>
<link rel="stylesheet" href="assets/css/style.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description" content="Brozers Mall">
<meta name="keywords" content="Brozers Mall" />
<style>
.appHeader1 {
	background-color: #090 !important;
	border-color: #090 !important;
}
.card {
	border-radius:0px;
	padding:10px !important;
}
h3{ font-weight:normal;
font-size:18px;}
.razorpay-payment-button {
padding: 10px 50px;
color: #fff;
background: #ff2e17;
font-weight: 600;
font-size: 14px;
border: 1px solid #ff2e17;
text-transform:uppercase;
}
.razorpay-payment-button:hover {
color: #fff;
background-color: #f33076;
border-color: #f2246e;
cursor:pointer;}
.thanks-title{ font-size:24px;}
h5{ margin-top:0px !important; font-size:18px;}
</style>
</head>

<body>
<?php include("include/connection.php");?>

<!-- App Header -->
<div class="appHeader1">
  <div class="left"> 
  <a href="myaccount.php" class="icon goBack"> 
  <i class="icon ion-md-arrow-back"></i> 
  </a>
    <div class="pageTitle">Recharge Success</div>
  </div>
</div>
<!-- * App Header --> 

<!-- App Capsule -->
<div id="appCapsule">
  <div class="appContent">
    <div class="sectionTitle3"> 
      
      <!-- post list -->
      <div class="">
        <div class="row"> 
          <!-- item -->
          <div class="col-12 pright">
            <div class="vcard card mt-5">
            <?php
    require_once("paytm/lib/config_paytm.php");
require_once("paytm/lib/encdec_paytm.php");

$paytmChecksum = "";
$paramList = array();
$isValidChecksum = "FALSE";

$paramList = $_POST;
$paytmChecksum = isset($_POST["CHECKSUMHASH"]) ? $_POST["CHECKSUMHASH"] : ""; 
$isValidChecksum = verifychecksum_e($paramList, PAYTM_MERCHANT_KEY, $paytmChecksum); 
            
   if($isValidChecksum == "TRUE") {
       if ($_POST["STATUS"] == "TXN_SUCCESS") {
      
@$array=$_POST;
@$userid=$_SESSION['frontuserid'];
@$transactionid=str_replace("pay_","",$array['TXNID']);
@$amt=$array['TXNAMOUNT'];
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
}?>
<div class="acd-items acd-arrow text-center">
        <i class="fa fa-check-circle fa-5x text-success"></i>
          <h1 class=" thanks-title text-success">Recharge Successful</h1>
        <h5 class=" thanks-title2 mt-1">You Paid <strong>₹ <?php echo number_format($amt,2);?></strong> to Metally Mall.</h5>
       <h5 class=" thanks-title2 mt-1">Your Transation Id is : <strong><?php echo $transactionid;?></strong></h5>
       <a href="myaccount.php" class="btn btn-sm btn-danger" style="width:264px;">Go Back</a>
        </div>
<?php
}else{//success
?>
<div class="acd-items acd-arrow text-center">
        <i class="fa fa-times-circle fa-5x text-danger"></i>
          <h1 class=" thanks-title text-danger">Recharge Failed</h1>
       
       <h5 class=" thanks-title2 mt-1">Transaction status is failure.</strong></h5>
       <a href="myaccount.php" class="btn btn-sm btn-danger" style="width:264px;">Go Back</a>
        </div>
<?php
}
}//checksum			
?> 
              
            </div>
          </div>
        </div>
      </div>
      <!-- * post list --> 
      <!-- * listview -->

    </div>
  </div>
</div>
<div class="mb-1"></div>
<?php include("include/footer.php");?>
<!-- Jquery --> 
<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
</body>
</html>