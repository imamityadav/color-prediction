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
.card {
    border: 1px solid #E5E9F2;
    border-radius: 3px;
    padding: 0px;
}
.card .card-title {
    margin-bottom: 7px;
}
.card-body{ padding:.6rem;}
td{ padding:3px;}
.btn-sm {
    height: 26px;
    padding: 0px 12px;
}
#confirm h4{font-size: 1rem;}
#confirm p{font-size: 13px; margin-top:20px;}
#confirm .modal-content{border-radius:3px}
#confirm .modal-dialog{padding:20px; margin-top:130px;}
</style>
</head>

<body>
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];?>

<!-- * Page loading --> 

<!-- App Header -->
<div class="appHeader1" style="background-color:#009688 !important">
  <div class="left"> <a href="#" onClick="goBack();" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Bank Card</div>
  </div>
</div>
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div id="appCapsule" class="pb-2">
  <div class="appContent1 pb-5">
    <ul class="nav nav-tabs size2" id="myTab3" role="tablist">
        <li class="nav-item"> 
<a class="nav-link active" id="home-tab3" data-toggle="tab" href="#bank" role="tab">Bank Account</a> 
        </li>
        
        
      </ul>
      <div class="mt-1">
      <div class="tab-content" id="myTabContent">
      <!--=========================tab-1========================================-->
        <div class="tab-pane fade active show" id="bank" role="tabpanel">
        <div class="text-right pr-1">
        <a href="addbankdetail.php" class="text-danger"><i class="fa fa-plus"></i> Add Bank</a>
        </div>
        <?php
$selectBankQuery=mysqli_query($con,"select * from `tbl_bankdetail` where `userid`='".$userid."' and `type`='bank'");
$bankRows=mysqli_num_rows($selectBankQuery);
if($bankRows!=''){
while($bankResult=mysqli_fetch_array($selectBankQuery)){
		?>
        <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title"><em><?php echo $bankResult['bankname'];?></em> </h5>
                    <p class="text-primary"><strong><?php echo $bankResult['account'];?></strong></p>
                    <p><?php echo $bankResult['ifsc'];?></p>
                    <p><?php echo $bankResult['name'];?></p>
                    <p><?php echo $bankResult['mobile'];?></p>
                    <p><?php echo $bankResult['email'];?> <a href="javascript:void(0);" class="text-danger pull-right" onClick="delete_row(<?php echo $bankResult['id'];?>)"><i class="fa fa-trash"></i></a></p>
                    
                </div>
            </div>
            
<?php }}else{?>

<?php }?>
        </div>
       <!--=========================tab-1 end========================================-->
       <!--=========================tab-2========================================-->
        
<?php
$selectupiQuery=mysqli_query($con,"select * from `tbl_bankdetail` where `userid`='".$userid."' and `type`='upi'");
$upiRows=mysqli_num_rows($selectupiQuery);
if($upiRows!=''){
while($upiResult=mysqli_fetch_array($selectupiQuery)){
		?>
        
            
<?php }}else{?>
<div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title text-info"><em>Not found....</em> </h5>
                   </div>
            </div>
<?php }?>
        </div>

        </div>
      </div>
  </div>
</div>
<!-- appCapsule -->

<?php include("include/footer.php");?>

<div id="confirm" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-body"> Are you sure you want to delete?</div>
      <input type="hidden" id="deleteid" name="deleteid" value="">
      <div class=" text-center pb-1">
    <a type="button" class="btn btn-sm bg-danger text-light" onClick="deletedetail();">YES</a>
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
<script type="text/javascript">
 function delete_row(Id) {
 $('#confirm').modal({backdrop: 'static', keyboard: false})  
     $('#confirm').modal('show');
     $('#deleteid').val(Id);

       }

function deletedetail() {
var Id=$('#deleteid').val();
//alert(Id);
           
               $.ajax({
                   type: "Post",
                  data:"id=" + Id + "& type=" + "delete" ,
                   url: "addbankcardNow.php",
                   success: function (html) { 
                      if(html==1){
                     window.location = '';
					  }
					  else if(html==0){
						  alert("Some Technical Problem");
						  
						  }
                   },
                   error: function (e) {
                   }
               });
           }

</script>
</body>
</html>