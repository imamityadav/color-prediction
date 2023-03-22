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
<link href="assets/css/dataTables.bootstrap.min.css" rel="stylesheet"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description" content="Bitter Mobile Template">
<meta name="keywords" content="bootstrap, mobile template, bootstrap 4, mobile, html, responsive" />
<style>
h3 {
	font-weight:normal;
}
.tdtext{ font-size:16px !important; color:##1B2C42; !important; font-weight:normal; text-align:right;}
.tdtext2{ font-size:16px !important; color:#f00 !important; font-weight:normal; text-align:right;}
.tdtext3{ font-size:16px !important; color:#FFB400 !important; font-weight:normal; text-align:right;}

.text small{ font-size:12px; color:#888;}
.listView .listItem {
   padding: 0px 55px 0px 0px;
}
.listView .listItem .text {
    font-size: 16px;
}
.dropdown-menu{ background:#fff;top: -15px;
left: -145px; border:none;
border-radius:0px;
-webkit-box-shadow: 0 3px 1px -2px rgba(0, 0, 0, .2), 0 2px 2px 0 rgba(0, 0, 0, .14), 0 1px 5px 0 rgba(0, 0, 0, .12);
box-shadow: 0 3px 1px -2px rgba(0, 0, 0, .2), 0 2px 2px 0 rgba(0, 0, 0, .14), 0 1px 5px 0 rgba(0, 0, 0, .12);}
.appHeader1 .right{right:20px;}
.dropdown-item {
    padding: .75rem 1.5rem;
}

</style>

</head>

<body>
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];
?>


<!-- App Header -->
<div class="appHeader1" style="background-color:#009688 !important">
  <div class="left"> <a href="#" onClick="goBack();" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Promotion Record</div>
  </div>
  <div class="right"> 
  <div class="dropdown">
  <a class="" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size:20px;">
    <i class="icon ion-md-list"></i></a>
  </a>

  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item" href="promotionrecord.php">Promotion Record</a>
    <a class="dropdown-item" href="bonusrecord.php">Bonus Record</a>
    <a class="dropdown-item" href="promotionApplyrecord.php">Apply Record</a>
  </div>
</div>
  </div>
</div>
<!-- searchBox --> 

<!-- * searchBox --> 
<!-- * App Header --> 

<!-- App Capsule -->
<div id="appCapsule" class="pb-2">
  <div class="pb-5">
     <ul class="nav nav-tabs size2" id="myTab3" role="tablist">
        <li class="nav-item"> 
<a class="nav-link active" id="home-tab3" data-toggle="tab" href="#level1" role="tab">Level 1</a> 
        </li>
        <li class="nav-item"> 
<a class="nav-link" id="profile-tab3" data-toggle="tab" href="#level2" role="tab">Level 2</a>
         </li>
        
      </ul>
      <div class="mt-1">
      <div class="tab-content" id="myTabContent">
      <!--=========================tab-1========================================-->
        <div class="tab-pane fade active show" id="level1" role="tabpanel">
        <div class="row">
        <div class="col-12">
        <div class="table-container listView pl-2 pr-2">
  
    <table id="example1" class="table table-borderless" style="border-bottom: 1px solid #E5E9F2;">
      <thead>
      <tr style="display:none;"><th></th><th></th></tr>
      </thead>
      <tbody>
      <?php
	  @$userid=$_SESSION['frontuserid'];
      $user=mysqli_query($con,"select * from `tbl_user` where `id`='".$userid."'");
	  $userRows=mysqli_num_rows($user);
	  $userResult=mysqli_fetch_array($user);
	  $owncode=$userResult['owncode'];
	  $userlevel1=mysqli_query($con,"select * from `tbl_user` where `code`='".$owncode."' order by id asc");
	  $userlevel1Rows=mysqli_num_rows($userlevel1);
	  if($userlevel1Rows!=''){
		  while($userlevel1Result=mysqli_fetch_array($userlevel1)){
$post_date = $userlevel1Result['createdate'];
 $post_date2 = strtotime($post_date);
 $convert=date('Y-m-d',$post_date2);
	  ?>
        <tr>
          <td>
          <div class="listItem">
          <div class="image">
              <div class="iconBox bg-grey"> 
              <i class="icon ion-md-person"></i> 
              </div>
            </div>
            <div class="text"><div><strong>Member:<?php echo sprintf("%06d",$userlevel1Result['id']);?></strong></div></div>
            </div>
            </td>
          <td class="tdtext"><?php echo $convert;?></td>
        </tr>
        <?php }}else{?>
        <tr>
          <td colspan="2">
          <div class="listItem">
            <div class="text"><div class="text-center"><strong>Transation not fount...</strong></div></div>
            </div>
            </td>
          
        </tr>
        <?php }?>
      </tbody>
    </table>
    </div>
        </div> 
           
        </div>
        </div>
       <!--=========================tab-1 end========================================-->
       <!--=========================tab-2========================================-->
        <div class="tab-pane fade" id="level2" role="tabpanel">
<div class="row">
        <div class="col-12">
        <div class="table-container listView pl-2 pr-2">
  
    <table id="example2" class="table table-borderless" style="border-bottom: 1px solid #E5E9F2;">
      <thead>
      <tr style="display:none;"><th></th><th></th></tr>
      </thead>
      <tbody>
      <?php
	  @$userid=$_SESSION['frontuserid'];
     $user2=mysqli_query($con,"select * from `tbl_user` where `id`='".$userid."'");
	  $userRows2=mysqli_num_rows($user2);
	  $userResult2=mysqli_fetch_array($user2);
	  $owncode2=$userResult2['owncode'];
	  $userlevel2=mysqli_query($con,"select * from `tbl_user` where `code`='".$owncode2."' order by id asc");
	  $userleve21Rows=mysqli_num_rows($userlevel2);
	  if($userleve21Rows!=''){
		  while($userlevel2Result=mysqli_fetch_array($userlevel2)){
 $lvl2user=mysqli_query($con,"select * from `tbl_user` where `code`='".$userlevel2Result['owncode']."'");
 while($userlvl2Result=mysqli_fetch_array($lvl2user)){
	 $post_date = $userlvl2Result['createdate'];
 $post_date2 = strtotime($post_date);
 $convert2=date('Y-m-d',$post_date2);

	  ?>
        <tr>
          <td>
          <div class="listItem">
          <div class="image">
              <div class="iconBox bg-grey"> 
              <i class="icon ion-md-person"></i> 
              </div>
            </div>
            <div class="text"><div><strong>Member:<?php echo sprintf("%06d",$userlvl2Result['id']);?></strong></div></div>
            </div>
            </td>
          <td class="tdtext"><?php echo ($convert2);?></td>
        </tr>
        <?php }}}else{?>
        <tr>
          <td colspan="2">
          <div class="listItem">
            <div class="text"><div class="text-center"><strong>Transation not fount...</strong></div></div>
            </div>
            </td>
          
        </tr>
        <?php }?>
      </tbody>
    </table>
    </div>
        </div> 
           
        </div>
        </div>

        </div>
      </div>
      
  </div>
</div>
<!-- appCapsule -->

<?php include("include/footer.php");?>


<script src="assets/js/lib/jquery-3.4.1.min.js"></script> 
<!-- Bootstrap--> 
<script src="assets/js/lib/popper.min.js"></script> 
<script src="assets/js/lib/bootstrap.min.js"></script> 
<!-- Owl Carousel --> 
<script src="assets/js/plugins/owl.carousel.min.js"></script> 
<!-- Main Js File --> 
<script src="assets/js/app.js"></script> 
<script src="assets/js/jquery.dataTables.min.js"></script>

<script>

  $(function () {
    $('#example1').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": false,
      "info": true,
      "autoWidth": false
    });
	$('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": false,
      "info": true,
      "autoWidth": false
    });
  });
</script>
</body>
</html>