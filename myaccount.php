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
<style>
.appHeader1 {
	background-color: #fff !important;
	border-color: #fff !important;
}
.appContent3 {
	background-color: #00A36C !important;
	border-color: #2196f3 !important;
	padding:12px;
	border-radius:3px;
	font-size:16px;
}
.user-block img {
	width: 40px;
	height: 40px;
	float: left;
	margin-right:10px;
	background:#333;
}
.img-circle {
	border-radius: 50%;
}
.accordion .btn-link {
	box-shadow:none;
	padding:8px !important;
	margin:0px 0px;
	color: #333 !important;
	font-size: 16px;
	font-weight: normal;
	border-top:solid 1px #ccc;
}
.accordion .collapsed {
	border:none;
}
.accordion .show {
	border-bottom:solid 1px #ccc;
}
.accordion .sub-link {
	box-shadow:none;
	padding:8px !important;
	color: #333 !important;
	font-size: 20px;
	font-weight: normal;
	display:block;
}
.accordion .sub-link:hover {
color:#00F !important;
}
.accordion .btn-link:hover {
	background:#F5F5F5;
}
.accordion .btn-link {
	position: relative;
}
 .accordion .btn-link::after {
 content: "\f107";
 color: #333;
 top: 8px;
 right: 9px;
 position: absolute;
 font-family: "FontAwesome";
 font-size:30px;
}
 .accordion .btn-link[aria-expanded="true"]::after {
 content: "\f106";
}
.light{
    height: 24px;
    padding: 0px 0px;
	margin: 5px 2px;
	border-radius: 20px;
width: 24px;}
.light1{
    height: 26px;
    padding: 0px 0px;
	margin: 5px 2px;
	border-radius: 20px;
width: 26px;}

</style>
</head>

<body>
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];
$selectruser=mysqli_query($con,"select * from `tbl_user` where `id`='".$userid."'");
$userresult=mysqli_fetch_array($selectruser);
$selectwallet=mysqli_query($con,"select * from `tbl_wallet` where `userid`='".$userid."'");
$walletResult=mysqli_fetch_array($selectwallet);
?>
<!-- Page loading -->
<div class="loading" id="loading">
  <div class="spinner-grow"></div>
</div>
<!-- * Page loading --> 

<!-- App Header -->
<div class="vcard"> 
  <div class="appContent3 text-white">
    <div class="row">
      <div class="col-12 mb-1">
        <div class="user-block"> <img class="img-circle img-bordered-lg" src="assets/img/avatar.svg"> </div>
        User ID: <?php echo sprintf("%06d",user($con,'mobile',$userid));?>
        </div>
        <div class="col-12 mb-0">Mobile: +91 <?php echo user($con,'mobile',$userid);?></div>
      <div class="col-12 mb-1">Available Balance: ₹ <?php echo number_format(wallet($con,'amount',$userid), 2);?></div>
     <div class="col-12">
     <a href="recharge.php" class="btn btn-sm btn-success pull-left m-0" style="background-color:#2196f3 !important">Recharge</a> 
      </div>
    </div>
  </div>
</div>
</div>
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div class="appContent1 mb-5">
  <div class="contentBox long mb-3">
    <div class="contentBox-body card-body"> 
      
      <!-- listview -->
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>      
      <div class="accordion" id="accordionExample">
          <div class="card-header">
            <h2 class="mb-0"> 
             <a href="order.php" class="btn btn-link collapsed fa fa-list text-primary" style="font-size:16px"></i>
           Order </a> </h2>
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>             
          <div class="card-header">
            <h2 class="mb-0"> 
             <a href="transactions.php" class="btn btn-link collapsed fa fa-money text-primary" style="font-size:16px"></i>
           Transcations </a> </h2>
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>   
          <div class="card-header">
          <h2 class="mb-0"> 
          <a href="promotion.php" class="btn btn-link collapsed fa fa-gift text-primary" style="font-size:16px"></i>
           Promotion </a> </h2>
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________________________________________________________________________________________ </p>             
          <div class="card-header" id="headingThree">
          <h2 class="mb-0"> <a href="#" class="btn btn-link collapsed fa fa-rupee text-primary" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"></i>Wallet</a> </h2>
         </div>
          <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
          <a href="recharge.php" class="sub-link"> Recharge </a>
          <a href="withdrawal.php" class="sub-link"> Withdrawal </a>
          <a href="transactions.php" class="sub-link"> Transactions </a>
          </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>             
<div class="card-header">
            <h2 class="mb-0"> 
             <a href="manage_bankcard.php" class="btn btn-link collapsed fa fa-bank text-primary" style="font-size:16px"></i>
           Bankcard </a> </h2>
           </div> 
          <!--<div class="card-header">-->
          <!--  <h2 class="mb-0"> <a href="#" class="btn btn-link collapsed"> Share </a> </h2>-->
          <!--</div>-->
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>           
        <div class="card-header" id="headingThree">
          <h2 class="mb-0"> <a href="#" class="btn btn-link collapsed fa fa-shield text-primary" type="button" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour"> Account Security </a> </h2>
        </div>
<p style="color: white; font-size:11px;" ><strong>______________________________________________________________________________ </p>   
        <div id="collapsefour" class="collapse">
      <a href="resetpassword.php" class="sub-link"> Reset Password </a>
        </div>
        <div class="card-header" id="headingThree">
          <h2 class="mb-0"> <a href="#" class="btn btn-link collapsed fa fa-user text-primary" type="button" data-toggle="collapse" data-target="#collapsefive" aria-expanded="false" aria-controls="collapsefive"> About </a> </h2>
        </div>
        <div id="collapsefive" class="collapse">
        <a href="priv.acy.php" class="sub-link"> Privacy Policy </a>
        <a href="riskagreement.php" class="sub-link"> Risk Disclosure Agreement </a>
         </div>
<p style="color: white; font-size:11px;" ><strong>_____________________________________________________________________</p>            
<div class="card-header">
            <h2 class="mb-0"> 
             <a href="_Vclubs_15242831.apk" class="btn btn-link collapsed"><i class="fa fa-download text-primary" style="font-size:16px"></i>
           Download App </a> </h2>
          </div>
<p style="color: white; font-size:11px;" ><strong>_____________________________________________________________________</p>            
<div class="card-header">
            <h2 class="mb-0"> 
             <a href="https://t.me/Vclubssupport" class="btn btn-link collapsed"><i class="fa fa-telegram text-primary" style="font-size:16px"></i>
           Support </a> </h2>
          </div>          
         </div>
      <!-- * listview --> 
      </div>
  </div>
   <!-- app Footer -->
  <div class="text-center mt-4"> <a href="logout.php" class="btn btn-sm btn-light" style="width:200px; background-image: linear-gradient(
#29B6F6, 
#29B6F6);">Logout</a> </div>
  <!-- * app Footer --> 
  
</div>
<!-- appCapsule -->
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