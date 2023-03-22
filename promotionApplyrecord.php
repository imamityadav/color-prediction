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
.tdtext{ font-size:16px !important; color:#090 !important; font-weight:normal; text-align:right;}
.tdtext2{ font-size:16px !important; color:#f00 !important; font-weight:normal; text-align:right;}
.tdtext3{ font-size:16px !important; color:#FFB400 !important; font-weight:normal; text-align:right;}

.text small{ font-size:12px; color:#888;}
.listView .listItem {
   padding: 0px 55px 0px 0px;
}
.listView .listItem .text {
    font-size: 16px;
}
</style>
</head>

<body>
<?php
include("include/connection.php");
$userid=$_SESSION['frontuserid'];?>
<!-- Page loading -->

<!-- * Page loading --> 

<!-- App Header -->
<div class="appHeader1" style="background-color:#009688 !important">
  <div class="left"> <a href="#" onClick="goBack();" class="icon goBack"> <i class="icon ion-md-arrow-back"></i> </a>
    <div class="pageTitle">Apply Record</div>
  </div>
</div>
<!-- * App Header --> 
<!-- App Capsule -->
<div id="appCapsule">
  <div class="appContent1 listView pb-5 mb-3">
  <div class="table-container">
  
    <table id="example1" class="table table-borderless" style="border-bottom: 1px solid #E5E9F2;">
      <thead>
      <tr style="display:none;"><th></th><th></th></tr>
      </thead>
      <tbody>
      <?php
	  @$userid=$_SESSION['frontuserid'];
      $summery=mysqli_query($con,"select * from `tbl_bonuswithdrawal` where `userid`='".$userid."' order by id desc");
	  $summeryRows=mysqli_num_rows($summery);
	  if($summeryRows!=''){
		  while($summeryResult=mysqli_fetch_array($summery)){
$post_date = $summeryResult['createdate'];
 $post_date2 = strtotime($post_date);
 $convert=date('Y-m-d H:i',$post_date2);
	  ?>
        <tr>
          <td>
          <div class="listItem">
          <div class="image">
              <div class="iconBox bg-danger"> 
              <i class="icon ion-md-wallet"></i> 
              </div>
            </div>
            <div class="text"><div><strong>Withdrawal</strong><small><?php echo $convert;?></small></div></div>
            </div>
            </td>
          <td class="tdtext2">-- <?php echo number_format($summeryResult['amount'],2);?></td>
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
  });
</script>

</body>
</html>