<?php
ob_start();

session_start();
$con = @mysqli_connect('localhost', 'colorslife', 'Kapil@123', 'colorslife');
if (!$con) {
    echo "Error: " . mysqli_connect_error();
	exit();
}

$postdata = $_POST;
if(!($_POST))
{
	echo '<script>window.location.href="myaccount.php";</script>';
}
$msg = '';
if (isset($postdata ['key'])) {
	$key				=   $postdata['key'];
	$salt				=   $postdata['salt'];
	$txnid 				= 	$postdata['txnid'];
    $amount      		= 	$postdata['amount'];
	$productInfo  		= 	$postdata['productinfo'];
	$firstname    		= 	$postdata['firstname'];
	$email        		=	$postdata['email'];
	$udf5				=   $postdata['udf5'];
	$mihpayid			=	$postdata['mihpayid'];
	$status				= 	$postdata['status'];
	$resphash				= 	$postdata['hash'];
	//Calculate response hash to verify	
	$keyString 	  		=  	$key.'|'.$txnid.'|'.$amount.'|'.$productInfo.'|'.$firstname.'|'.$email.'|||||'.$udf5.'|||||';
	$keyArray 	  		= 	explode("|",$keyString);
	$reverseKeyArray 	= 	array_reverse($keyArray);
	$reverseKeyString	=	implode("|",$reverseKeyArray);
	$CalcHashString 	= 	strtolower(hash('sha512', $salt.'|'.$status.'|'.$reverseKeyString));

	
	if ($status == 'success' ) {   /* && $resphash == $CalcHashString*/
		/*$msg = "Transaction Successful and Hash Verified...";*/
		//Do success order processing here...
		$_SESSION['frontuserid']=$productInfo;
		$userid=$_SESSION['frontuserid'];
		$chkorder=mysqli_query($con,"select * from `tbl_order` where `transactionid`='".$txnid."'");
		$chkorderRow=mysqli_num_rows($chkorder);
		$today = date("Y-m-d H:i:s");
		if($chkorderRow==''){
			$sql= mysqli_query($con,"INSERT INTO `tbl_order`(`userid`,`transactionid`,`amount`,`status`) VALUES ('".$userid."','".$txnid."','".$amount."','1')");
			$orderid=mysqli_insert_id($con);

			$sql3= mysqli_query($con,"INSERT INTO `tbl_walletsummery`(`userid`,`orderid`,`amount`,`type`,`actiontype`,`createdate`) VALUES ('".$userid."','".$orderid."','".$amount."','credit','recharge','".$today."')");

			$sqlwall="SELECT * FROM `tbl_wallet` WHERE `userid`='$userid'";
			$reswall=mysqli_query($con,$sqlwall);
			if(mysqli_num_rows($reswall)>0)
			{
				$rowwall=mysqli_fetch_assoc($reswall);
				$walletbalance=$rowwall['amount'];	
				$finalbalanceCredit=$walletbalance+$amount;	

				$sqlwallet= mysqli_query($con,"UPDATE `tbl_wallet` SET `amount` = '$finalbalanceCredit' WHERE `userid`= '$userid'");
			}
			else
			{

				$walletbalance=0;	
				$finalbalanceCredit=$walletbalance+$amount;	
			
				$sqlwallet= mysqli_query($con,"INSERT INTO `tbl_wallet`(`userid`,`amount`,`envelopestatus`)VALUES('$userid','$finalbalanceCredit','0')");
			}
			
			
			
		}

	}
	else {
		//tampered or failed
		/*$msg = "Payment failed for Hash not verified...";*/
	} 
}
//else exit(0);
?>


<!doctype html>
<html lang="en">
  <head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Metally Mall</title>
  <link rel="stylesheet" href="assets/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta name="description" content="Bitter Mobile Template">
  <meta name="keywords" content="bootstrap, mobile template, bootstrap 4, mobile, html, responsive" />
  <style>
.appHeader1 {
	background-color: #f44336 !important;
	border-color: #f44336 !important;
}
.card {
	border-radius:0px;
	padding:10px !important;
}
h3 {
	font-weight:normal;
	font-size:18px;
}
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
	cursor:pointer;
}

.btn{ background-color: blue;
}
</style>
  
  </head>

  <body>
  <?php include("include/connection.php");?>
  

  <!-- App Header -->
  <div class="appHeader1">
    <div class="left"> <a href="myaccount.php"  class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
      <div class="pageTitle">My Account</div>
    </div>
  </div>

    <?php include'head.php' ?>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

    <br>
    <div class="conntainer-fluid col-md-12 d-flex justify-content-center">
	<div class="card col-md-9 shadow">
	<div id="appCapsule">
    <div class="appContent">
      <div class="sectionTitle3"> 
        
        <!-- post list -->
        <div class="">
          <div class="row"> 
            <!-- item -->
            <div class="col-12 pright">
              <div class="vcard card mt-5" style="margin-top: 36px !important;">
                <table class="table table-borderless">
                  <thead>
                    <tr>
                      <th colspan="2" style="text-align:center; font-size:18px; border-top:none;">Transaction Details</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Transaction/Order ID: </td>
                      <td><?php echo $txnid; ?></td>
                    </tr>
                    <tr>
                      <td>Amount: </td>
                      <td><?php echo $amount; ?></td>
                    </tr>
                    <tr>
                      <td>Email ID: </td>
                      <td><?php echo $email; ?></td>
                    </tr>
                    <tr>
                      <td>Mihpayid: </td>
                      <td><?php echo $mihpayid; ?></td>
                    </tr>

                    <tr>
                      <td>Transaction Status: </td>
                      <td><?php echo $status; ?></td>
                    </tr>
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
	
		<div>
			
		</div>
			
		  <div class="form-group">

			
    			 <a href="myaccount.php"  class="form-control bg-danger text-center" style="color:white !important;    height: 40px;"><b>Back</b></a>

		
			</div> 

		
	</div> 
	

 
</body>
</html>








<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PayUmoney BOLT PHP7 Kit</title>
</head>
<style type="text/css">
	.main {
		margin-left:30px;
		font-family:Verdana, Geneva, sans-serif, serif;
	}
	.text {
		float:left;
		width:180px;
	}
	.dv {
		margin-bottom:5px;
	}
</style>
<body>
<div class="main">
	
    <div>
    	<h3>PHP7 BOLT Kit Response</h3>
    </div>
	
    <div class="dv">
    <span class="text"><label>Merchant Key:</label></span>
    <span><?php echo $key; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Merchant Salt:</label></span>
    <span><?php echo $salt; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Transaction/Order ID:</label></span>
    <span><?php echo $txnid; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Amount:</label></span>
    <span><?php echo $amount; ?></span>    
    </div>
    
    <div class="dv">
    <span class="text"><label>Product Info:</label></span>
    <span><?php echo $productInfo; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>First Name:</label></span>
    <span><?php echo $firstname; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Email ID:</label></span>
    <span><?php echo $email; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Mihpayid:</label></span>
    <span><?php echo $mihpayid; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Hash:</label></span>
    <span><?php echo $resphash; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Transaction Status:</label></span>
    <span><?php echo $status; ?></span>
    </div>
    
    <div class="dv">
    <span class="text"><label>Message:</label></span>
    <span><?php echo $msg; ?></span>
    </div>
</div>
</body>
</html> -->
	