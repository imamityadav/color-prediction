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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<style>
#alert .modal-dialog{padding:20px; margin-top:130px;}
#alert2 .modal-dialog{padding:20px; margin-top:130px;}

</style>
</head>

<body>



<!-- App Header -->
<div class="appHeader1">
  <div class="left"> <a href="myaccount.php" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Reset Password</div>
  </div>
</div>
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div id="appCapsule" class="pb-2">
  <div class="appContent1 pb-0">
    <form action="#" id="changepasswordform">
      <div class="inner-addon left-addon"> <i class="icon ion-md-key"></i>
        <input type="password" name="opassword" id="opassword" class="form-control" placeholder="Enter Old Password">
      </div>
      <div class="inner-addon left-addon"> <i class="icon ion-md-key"></i>
        <input type="password" name="npassword" id="npassword" class="form-control" placeholder="Enter New Password">
      </div>
      <div class="inner-addon left-addon"> <i class="icon ion-md-key"></i>
        <input type="password" name="cpassword" id="cpassword" class="form-control" placeholder="Confirm Password">
      </div>
      <input type="hidden" name="userid" id="userid" value="<?php echo $_SESSION['frontuserid'];?>">
      <input type="hidden" name="action" id="action" value="change">
      <div class="text-center mt-3">
        <button type="submit" class="btn btn-primary" style="width:264px;"> Submit </button>
      </div>
    </form>
  </div>
</div>
<!-- appCapsule -->
<div id="alert2" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body" id="alertmessage2"> </div>
      <div class="text-center pb-1">
    <a href="logout.php" type="button" class="text-info" >OK</a>
    </div> 
    </div>
  </div>
</div>
<div id="alert" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body" id="alertmessage"> </div>
      <div class="text-center pb-1">
    <a type="button" class="text-info" data-dismiss="modal">OK</a>
    </div> 
    </div>
  </div>
</div>
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
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/password.js"></script>
</body>
</html>