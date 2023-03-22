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
<meta name="description" content="Bitter Mobile Template">
<meta name="keywords" content="bootstrap, mobile template, bootstrap 4, mobile, html, responsive" />
<style>
.appHeader1 {
	background-color: #f00 !important;
	border-color: #f00 !important;
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
<!-- Page loading -->
<div class="loading" id="loading">
  <div class="spinner-grow"></div>
</div>
<!-- * Page loading --> 

<!-- App Header -->
<div class="appHeader1">
  <div class="left"> 
  <a href="myaccount.php" class="icon goBack"> 
  <i class="icon ion-md-arrow-back"></i> 
  </a>
    <div class="pageTitle">Recharge Failed</div>
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
            @$array=$_POST;
@$userid=$_SESSION['frontuserid'];
@$transactionid=str_replace("pay_","",$array['txnid']);
@$amount=$array['amount'];
$chkorder=mysqli_query($con,"select * from `tbl_order` where `transactionid`='".$transactionid."'");
$chkorderRow=mysqli_num_rows($chkorder);
$today = date("Y-m-d H:i:s");
	

unset($_SESSION["name"]);
unset($_SESSION["mobile"]);
unset($_SESSION["email"]);
unset($_SESSION["finalamount"]);
			?> 
              <div class="acd-items acd-arrow text-center">
        <i class="fa fa-times-circle fa-5x text-danger"></i>
          <h1 class=" thanks-title text-danger">Recharge Failed</h1>
        <h5 class=" thanks-title2 mt-1">You transaction of <strong>₹ <?php echo number_format($amount,2);?></strong> to Metally Mall is failed.</h5>
       <h5 class=" thanks-title2 mt-1">Your Transation Id is : <strong><?php echo $transactionid;?></strong></h5>
       <a href="myaccount.php" class="btn btn-sm btn-danger" style="width:264px;">Go Back</a>
        </div>
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