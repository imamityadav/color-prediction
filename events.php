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
<link rel="stylesheet" href="assets/css/style.css?v=2">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description" content="Bitter Mobile Template">
<meta name="keywords" content="bootstrap, mobile template, bootstrap 4, mobile, html, responsive" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<style>
.pleft {
	padding-left:3px;
}
.pright {
	padding-right:3px;
}
  .height{ height:40px; line-height:40px;}
.height .pageTitle{ line-height:2em;}

</style>
</head>

<body>
<?php include("include/connection.php");?>



<!-- App Header -->
<div class="appHeader">
  <div class="pageTitle text-danger">EVENTS & OFFER</div>
</div>


<nav class="bg-danger text-light">
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Home</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Agents Bonus</button>
    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Recharge Offer</button>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">


<div class="card text-center">
 <p style="font-size:10px; color:red;">Withdrawal Working All Days. (Time : 10:00 am to 6:00 pm)</p>
  </div>
<div class="card text-center">
  <div class="card-header  bg-info text-light">
Invite Bonus & Minimmum Recharge
  </div>
 
  <div class="card-body">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Invite Bonus : 170 Rs</li>
    <li class="list-group-item">Minimmum Recharge: 400 Rs</li>
     <li class="list-group-item">Minimmum Withdrawal: 530 Rs</li>
     <li class="list-group-item text-danger">Withdrawal Processing Time: 10 Minutes to 24 Hours</li>
     
     </ul>


<div class="card text-center">
  <div class="card-header bg-danger text-light">TODAYS SPECIAL RECHARGE OFFER
  </div>
  <div class="card text-center">
 <p style="font-size:10px; color:red;">Condition: Recharge & Bonus Balance Double to Withdrawal.</p>
  </div>
  <div class="card-body">
      
 <table class="table table-sm">
       <tbody>
    <tr>
     
      <th scope="col"> Recharge</th>
      <th scope="col">Bonus Offer</th>
    </tr>

    <tr>
      <table class="table table-sm">
  <thead>
    
  </thead>
  <tbody>
    <tr>
      <th scope="row">3000</th>
      <td>1500</td>
      
    </tr>
    <tr>
      <th scope="row">5000</th>
      <td>2500</td>
      
    </tr>
    <tr>
      <th scope="row">10000</th>
      <td>5000</td>
      
    </tr>
    <tr>
      <th scope="row">20000</th>
      <td>10000</td>
      
    </tr>
    
    
   
  </tbody>

</table>

  </div>
  <div class="card-footer text-muted">
    
  </div>
</div>


  </div>
  <div class="card-footer text-muted">
    
  </div>
</div>













</div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

<div class="card text-center">
  <div class="card-header bg-info text-light">AGENTS BONUS
  </div>
  <div class="card-body">
      
 <table class="table table-sm">
       <tbody>
    <tr>
     
      <th scope="col">First Recharge</th>
      <th scope="col">Agent Bonus</th>
    </tr>

    <tr>
      <table class="table table-sm">
  <thead>
    
  </thead>
  <tbody>
    <tr>
      <th scope="row">1000</th>
      <td>200</td>
      
    </tr>
    <tr>
      <th scope="row">3000</th>
      <td>500</td>
      
    </tr>
    <tr>
      <th scope="row">5000</th>
      <td>700</td>
      
    </tr>
    <tr>
      <th scope="row">10000</th>
      <td>1200</td>
      
    </tr>
    <tr>
      <th scope="row">20000</th>
      <td>2400</td>
      
    </tr>
    <tr>
      <th scope="row">30000</th>
      <td>3600</td>
      
    </tr>
    <tr>
      <th scope="row">50000</th>
      <td>5000</td>
      
    </tr>
    <tr>
      <th scope="row">100000</th>
      <td>10000</td>
      
    </tr>
   
  </tbody>

</table>

  </div>
  <div class="card-footer text-muted">
    
  </div>
</div>



</div>
  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
  
  <div class="card text-center">
  <div class="card-header bg-info text-light">RECHARGE OFFER
  </div>
  <div class="card-body">
      
 <table class="table table-sm">
       <tbody>
    <tr>
     
      <th scope="col">First Recharge</th>
      <th scope="col">Bonus Offer</th>
    </tr>

    <tr>
      <table class="table table-sm">
  <thead>
    <tr>

      <th scope="row">1000</th>
      <th >200</th>

    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">2000</th>
      <td>400</td>
      
    </tr>
    <tr>
      <th scope="row">5000</th>
      <td>1000</td>
      
    </tr>
    <tr>
      <th scope="row">10000</th>
      <td>2000</td>
      
    </tr>
    <tr>
      <th scope="row">20000</th>
      <td>4000</td>
      
    </tr>
    <tr>
      <th scope="row">50000</th>
      <td>10000</td>
      
    </tr>
    <tr>
      <th scope="row">100000</th>
      <td>20000</td>
      
    </tr>
    
   
  </tbody>

</table>

  </div>
  <div class="card-footer text-muted">
    
  </div>
</div>
  
  
  
  
  
  
  
  </div>
</div>

















<?php include("include/footer.php");?>

<!-- ///////////// Js Files ////////////////////  --> 
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