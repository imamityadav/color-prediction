<?php 
ob_start();
session_start();
if($_SESSION['frontuserid']=="")
{header("location:login.php");exit();}


    header("Pragma: no-cache");
    header("Cache-Control: no-cache");
    header("Expires: 0");
?>

<!doctype html>
<html lang="en">
  <head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Brozers Mall</title>
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
    <div class="left"> <a href="#" onClick="goBack()" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
      <div class="pageTitle">Pay Now</div>
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
                <table class="table table-borderless">
                  <thead>
                    <tr>
                      <th colspan="2" style="text-align:center; font-size:18px; border-top:none;">Payment Detail</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Name </td>
                      <td><?php echo $_SESSION['name'];?></td>
                    </tr>
                    <tr>
                      <td>Mobile </td>
                      <td><?php echo $_SESSION['mobile'];?></td>
                    </tr>
                    <tr>
                      <td>Email Id</td>
                      <td><?php echo $_SESSION['email'];?></td>
                    </tr>
                    <tr>
                      <td>Payable Amount </td>
                      <td>₹ <?php echo number_format($_SESSION['finalamount'],2);?></td>
                    </tr>
                    <tr>
                      <td colspan="2" style="text-align:center; font-size:18px;">
                      
                        
                        <?php if($formError) { ?>
                        <span style="color:red">Please fill all mandatory fields.</span> <br/>
                        <br/>
                        <?php } ?>
                        <form action="paytm/pgRedirect.php" method="post">
                        
           <input type="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20" name="ORDER_ID" autocomplete="off" value="<?php echo  "ORDS" . rand(10000,99999999)?>">
                        
                        <input type="hidden" id="CUST_ID" tabindex="2" maxlength="12" size="12" name="CUST_ID" value="<?php echo $_SESSION['frontuserid'];?>">
    <input type="hidden"  id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail">                    
                        
 <input  type="hidden" id="CHANNEL_ID" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID"  value="WEB">                       
   <input type="hidden" title="TXN_AMOUNT" tabindex="10"type="text" name="TXN_AMOUNT" value="<?php echo $_SESSION['finalamount'];?>">                     
                       
                          <input type="submit" class="razorpay-payment-button" value="Pay Now ₹ <?php echo number_format($_SESSION['finalamount'],2);?>" />
                          
                        </form></td>
                    </tr>
                  </tbody>
                </table>
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