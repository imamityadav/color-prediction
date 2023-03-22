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
.form-control{box-shadow:none; border-bottom:#ccc solid 1px; height:26px; margin-bottom:3px;}
.form-group{margin-bottom:0px;}
.form-group.floating>label {
    bottom: 34px;
    left: 8px;
    position: relative;
    background-color: white;
    padding: 0px 5px 0px 5px;
    font-size: 1.1em;
    transition: 0.1s;
    pointer-events: none;
    font-weight: 500 !important;
    transform-origin: bottom left;
}

.form-control.floating:focus~label{
    transform: translate(1px,-85%) scale(0.80);
    opacity: .8;
    color: #005ebf;
}

.form-control.floating:valid~label{
    transform-origin: bottom left;
    transform: translate(1px,-110%) scale(0.80);
    opacity: .8;
}
#alert .modal-dialog{padding:20px; margin-top:130px;}
#confirm .modal-dialog{padding:0px; margin-top:130px;}
.btn-sm {
    height: 26px;
    padding: 0px 12px;
}
</style>
</head>

<body>
<?php 
include("include/connection.php");
$userid=$_SESSION['frontuserid'];?>
<!-- Page loading -->
<div class="loading" id="loading">
  <div class="spinner-grow"></div>
</div>
<!-- * Page loading --> 

<!-- App Header -->
<div class="appHeader1">
  <div class="left"> <a href="#" onClick="goBack();" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Envelope</div>
  </div>
</div>
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div id="appCapsule" class="pb-2">
  <div class="appContent1 pb-5">
    <form action="#" method="post" id="envelopeform">
      
      <div class="form-group floating mt-3">
<input type="text" class="form-control floating" id="name" name="name" required value="">
<label for="name">Actual Name<i class="text-danger">*</i></label>
</div>

<div class="form-group floating">
<input type="number" class="form-control floating" id="mobile" name="mobile" maxlength="10" required value="">
<label for="mobile">Mobile<i class="text-danger">*</i></label>
</div>
<div class="form-group floating">
<input type="text" class="form-control floating" id="email" name="email" required value="">
<label for="email">Email id<i class="text-danger">*</i></label>
</div>
<div class="btn-group btn-group-toggle mt-n1" data-toggle="buttons">
                        <label class="btn btn-outline-warning active">
                            <input type="radio" name="optionsname" id="option1" value="10" checked>
                            <i class="icon"><i class="fa fa-rupee"></i></i>&nbsp;
                            10.00
                        </label>
                        
                    </div>
<input type="hidden" name="action" id="action" value="envelope">
<input type="hidden" name="userid" id="userid" value="<?php echo $userid;?>">
<input type="hidden" name="editid" value="">
<div class="text-center mt-1">
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
    <a type="button" class="text-info" data-dismiss="modal">OK</a>
    </div> 
    </div>
  </div>
</div>
<div id="confirm" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body"> Are you sure you want to collect envelope ?</div>
      <input type="hidden" id="deleteid" name="deleteid" value="">
      <div class=" text-center pb-1">
    <a type="button" class="btn btn-sm bg-danger text-light" onClick="submitenvelope();">YES</a>
    <a type="button" class="btn btn-sm btn-primary text-light" data-dismiss="modal">NO</a>
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
<script src="assets/js/envelope.js"></script>
</body>
</html>