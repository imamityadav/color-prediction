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
.pleft {
	padding-left:3px;
}
.pright {
	padding-right:3px;
}
</style>
</head>

<body>
<?php include("include/connection.php");?>




<!-- App Capsule -->
<div id="appCapsule">
  <div class="appContent1">
    <div class="searchBlock">
      <form id="searchform" method="post" action="#">
        <span class="inputIcon"> <i class="icon ion-ios-search"></i> </span>
        <input type="text" class="form-control" id="searchInput" name="searchInput" placeholder="Search for goods...">
      </form>
    </div>
  </div>
  <div class="appContent mt-2">
    <div class="sectionTitle mb-2"> 
      
      <!-- post list -->
      <div class="vcard">
        <div class="row" id="searchResult"> 
          <!-- item -->
          <?php
	$i=0;
  $productQuery=mysqli_query($con,"select * from `tbl_product` where `status`='1'");
  while($productResult=mysqli_fetch_array($productQuery)){$i++;?>
          <div class="col-6 <?php if(($i%2)==0){echo"pleft";}else{echo "pright";}?>">
            <div class="vcard card"> <a href="productdetails.php?pid=<?php echo encryptor('encrypt', $productResult['id']); ?>" class="postItem">
              <div class="imageWrapper"> <img src="<?php echo $productResult['images'];?>" alt="image" class="image"> </div>
              <p class="text-center"><?php echo $productResult['name'];?></p>
              <footer>₹ <?php echo number_format($productResult['price'], 2);?></footer>
              </a> </div>
          </div>
          <?php }?>
          <!-- * item --> 
          <!-- item -->
          
        </div>
      </div>
      <!-- * post list -->
      
      <div class="p-2"></div>
      
      <!-- * listview --> 
      
    </div>
    
    <!-- app Footer --> 
    
    <!-- * app Footer --> 
    
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