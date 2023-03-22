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
h3{ font-weight:normal; font-size:20px;}
.btn .error{margin-top: 55px;}
.btn-group {
box-shadow: none;
}
#alert h4{font-size: 1rem;}
#alert p{font-size: 13px; margin-top:20px;}
#alert .modal-content{border-radius:3px}
#alert .modal-dialog{padding:20px; margin-top:130px;}
#confirm .modal-dialog{padding:20px; margin-top:130px;}
.inner-addon select.error {
    font-size: 16px;
    position: unset;
}
</style>
</head>

<body>
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];?>


<!-- App Header -->
<div class="appHeader1" style="background-color:#009688 !important">
<div class="left">
            <a href="#" onClick="goBack();" class="icon goBack">
                <i class="icon ion-md-arrow-back"></i>
            </a>
            <div class="pageTitle">Withdrawal</div>
              </div>
 
 
</div>
<!-- * App Header --> 
<!-- App Capsule -->
<div id="appCapsule">
  <div class="appContent1">
<h3 class="text-center m-2">Balance: <span>₹ <?php echo number_format(wallet($con,'amount',$userid), 2);?></span></h3>
<p class="text-center m-2" Style="font-size:11px; color: red;">Minimmum Withdrawal is Now 300 Rs</p>
      
    <form action="#" id="paymentForm" method="post" class="card-body" autocomplete="off">
      <div class="inner-addon left-addon">
      <i class="icon"><i class="fa fa-rupee"></i></i>
        <input type="number" id="userammount" name="userammount" class="form-control" placeholder="Enter withdrawal amount" onKeyPress="return isNumber(event)" >
      </div>
            <div>
           <p> <strong>Select Payout Option</strong></p>
      <div class="btn-group btn-group-toggle mt-1" data-toggle="buttons">
                        
                            
                        <label class="btn btn-outline-primary ml-1">
                            <input type="radio" name="optionsname" id="option2" value="bank" onChange="paytype(<?php echo $userid?>,'bank')">
                            <i class="icon ion-md-checkmark"></i>&nbsp;
                            Bank Account
                        </label>
                    </div>
                 <div class="text-right mt-1">
    <a href="manage_bankcard.php" class="text-danger"><i class="fa fa-plus"></i> Add Bank</a>
    </div>   
               <div class="inner-addon left-addon mt-1">
      <i class="icon ion-md-card"></i>
        <select class="form-control select2" name="acid" id="acid" style="padding-left:45px;">
        <option value="">Select Bank Detail</option>
        </select>
      </div>  
<input type="hidden" name="userid" value="<?php echo $userid;?>">
<input type="hidden" name="action" value="withdrawal">
      <div class="text-center mt-3">
        <button type="submit" class="btn btn-primary" style="width:264px;"> Withdrawal </button>
        </div>
        
      </div>
    </form>
  </div>
</div>
<div class="container d-flex justify-content-center"><a href="withdrawalrecord.php" class"badge bg-info">Withdrawal Record</a>
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
<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/withdrawal.js.php"></script>
<script>
function paytype(userid,type)
{
//alert(userid);
var dataString = 'userid='+ userid+ "& type=" + type;
$.ajax
({
type: "POST",
url: "ajax_bankdetail.php",
data: dataString,
cache: false,
success: function(html)
{ //alert(html);
$("#acid").html(html);
} 
});	
	}
</script>

</body>
</html>