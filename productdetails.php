<?php
ob_start();
session_start();
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
.appHeader1 {
	background-color: #f44336 !important;
	border-color: #f44336 !important;
}
.card {
	border-radius:0px;
}
</style>
</head>

<body>
<?php include("include/connection.php");?>
<?php $id=encryptor('decrypt', $_GET['pid']); 
$productQuery=mysqli_query($con,"select * from `tbl_product` where `id`='".$id."'");
$productResult=mysqli_fetch_array($productQuery);
?>
<!-- Page loading -->
<div class="loading" id="loading">
  <div class="spinner-grow"></div>
</div>
<!-- * Page loading --> 

<!-- App Header -->
<div class="appHeader1">
  <div class="left"> 
  <a href="#" onClick="goBack()" class="icon goBack"> 
  <i class="icon ion-md-arrow-back"></i> 
  </a>
    <div class="pageTitle">Product</div>
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
            <div class="vcard card">
              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"> 
                <!--<ol class="carousel-indicators">
           <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
                -->
                </ol>
                <div class="carousel-inner">
                  <div class="carousel-item active"> <img class="d-block w-100" src="<?php echo $productResult['images'];?>" alt="images"> </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- * post list --> 
      <!-- * listview -->
      <div class="v-carousel__controls"></div>
    </div>
  </div>
</div>
<div class="v-card__actions"><span><?php echo $productResult['name'];?></span></div>
<div class="v-card__actions"><span style="color: rgb(243, 152, 57); font-size: 18px;">
₹ <?php echo number_format($productResult['price'], 2);?></span></div>
<div class="v-card__actions">
  <button disabled="disabled" type="button" class="btn btn-sm btn-light" style="text-transform: none;">
  <div class="v-btn__content"> Sold Out </div>
  </button>
</div>
<div class="elevation-1" style="padding-bottom: 64px; margin-top: 12px;">
  <div class="v-table__overflow">
    <table class="table table-borderless">
      <thead>
        <tr>
          <th colspan="2">Product Specifications</th>
        </tr>
      </thead>
      <tbody>
      <?php
	  $specificationQuery=mysqli_query($con,"select * from `tbl_productfeature` where `productid`='".$productResult['id']."'");
while($specificationResult=mysqli_fetch_array($specificationQuery)){?>
        <tr>
          <td><?php echo $specificationResult['title'];?> </td>
          <td><?php echo $specificationResult['feature'];?></td>
        </tr>
        <?php }?>
      </tbody>
    </table>
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
</body>
</html>