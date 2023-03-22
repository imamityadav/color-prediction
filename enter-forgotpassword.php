<?php
ob_start();
session_start();
include("include/connection.php");
@$userid=encryptor('decrypt', $_GET['token']);
 $matched=$_SESSION["matched"];
 if($userid=='' || $matched=='')
 {header("location:forgot-password.php");exit();}else{
?>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php include'head.php' ?>
<link rel="stylesheet" href="assets/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description" content="Bitter Mobile Template">
<meta name="keywords" content="bootstrap, mobile template, bootstrap 4, mobile, html, responsive" />
<style>
#alert .modal-dialog{padding:20px; margin-top:130px;}
#alert2 .modal-dialog{padding:20px; margin-top:130px;}
#registertoast .modal-dialog{padding:0px; margin-top:130px;}

</style>
</head>

<body>

<!-- Page loading -->
<div class="loading" id="loading">
  <div class="spinner-grow"></div>
</div>
<!-- * Page loading --> 

<!-- App Header -->
<div class="appHeader1">
  <div class="left"> <a href="login.php" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Reset Password</div>
  </div>
</div>
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div id="appCapsule" class="pb-2">
  <div class="appContent1 pb-0">
    <form action="#" id="finalforgotform">
      <div class="inner-addon left-addon">
      <i class="icon ion-md-key"></i>
        <input type="password" name="fnpassword" id="fnpassword" class="form-control" placeholder="New Password">
      
      </div>
      <div class="inner-addon left-addon">
      <i class="icon ion-md-key"></i>
        <input type="password" name="fcpassword" id="fcpassword" class="form-control" placeholder="Confirm Password">
      </div>
       <input type="hidden" name="type" id="type" value="passwordreset">
       <input type="hidden" name="userid" id="userid" value="<?php echo $userid;?>">

      <div class="text-center mt-3">
        <button type="submit" class="btn btn-primary" style="width:264px;"> Submit </button>
      </div>
    </form>
  </div>
</div>
<!-- appCapsule -->

<?php include("include/footer.php");?>
 <div id="alert" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body" id="alertmessage"> </div>
      <div class="text-center pb-1">
    <a type="button" class="text-info" data-dismiss="modal" onClick="window.location='forgot-password.php'">OK</a>
    </div> 
    </div>
  </div>
</div>
<div id="alert2" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body" id="alertmessage2"> </div>
      <div class="text-center pb-1">
    <a type="button" class="text-info" data-dismiss="modal">OK</a>
    </div> 
    </div>
  </div>
</div> 
<div id="registertoast" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content ">
      <div class="modal-body">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
       <span aria-hidden="true">×</span></button>
        <div class="text-center" id="regtoast">          
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Jquery --> 
<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
  <script src="assets/js/jquery.validate.min.js"></script>
  <script src="assets/js/forgot-password.js"></script>
</body>
</html>
<?php }?>