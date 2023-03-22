<?php 
ob_start();
session_start();
if($_SESSION['userid']=="")
{
	header("location:index.php?msg1=notauthorized");
	exit();
}
	
include ("include/connection.php");

if(isset($_POST['submit'])=='Submit'){
	$mra=($_POST['mra']);
	$mwa=($_POST['mwa']);
	$ib=($_POST['ib']);
	$rb=($_POST['rb']);
	$level1=($_POST['level1']);
	$level2=($_POST['level2']);

	
$sql= "UPDATE `tbl_paymentsetting` SET `rechargeamount` = '$mra',`withdrawalamount` = '$mwa',`bonusamount` = '$ib',`rechargebonus` = '$rb',`level1` = '$level1',`level2` = '$level2' WHERE `id`= '1'";
$query=mysqli_query($con,$sql);
if($query){
	
	header("location:manage_amount.php?msg=updt");
	
	}

	}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Adminsuit | Amount Setup</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <link rel="stylesheet" href="plugins/morris/morris.css">
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet" href="plugins/select2/select2.min.css">
<link rel="stylesheet" href="plugins/iCheck/all.css">
<link rel="stylesheet" type="text/css" href="css/jquery.multiselect.css" />
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css" />
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="hold-transition skin-red sidebar-mini">
<div class="wrapper">
<?php include ("include/header.inc.php");?>
 <?php include ("include/navigation.inc.php");
 $sql="select* FROM `tbl_paymentsetting` WHERE id='1'";
$query=mysqli_query($con,$sql);
$role=mysqli_fetch_array($query);

 ?> 
  <div class="content-wrapper">
    <section class="content-header">
      <h1>Amount Setup</h1>
      <ol class="breadcrumb">
        <li><a href="desktop.php"><i class="fa fa-dashboard"></i>Home</a></li>
        <li class="active">Amount Setup</li>
      </ol>
    </section>

                        
    <!-- Main content -->
    <section class="content">
      <div class="row">
      <div class="col-xs-12 text-center">
          
          <?php if(isset($_GET['msg'])=="updt"){ ?>
              <span class="text-center red_txt">Update Successfully......</span><?php  } ?></div>
        <div class="col-xs-12">
          <div class="box">
          
      <form id="formID" name="formID" method="post" action="<?php echo $_SERVER['PHP_SELF'];?>" enctype="multipart/form-data">
            <div class="box-body">
<div class="clearfix"></div>

<div class="col-sm-6">
              <div class="form-group">
              <label>Minium Recharge Amount</label>
              <input type="text" class="form-control" onkeypress="return isNumber(event)" name="mra" id="mra" required value="<?php echo $role['rechargeamount'];?>">
              </div>
              </div>
  <div class="col-sm-6">
              <div class="form-group">
              <label>Minimum Withdrawal Amount</label>
              <input type="text" class="form-control" onkeypress="return isNumber(event)" name="mwa" id="mwa" required value="<?php echo $role['withdrawalamount'];?>">
              </div>
              </div>          
 <div class="col-sm-6">
              <div class="form-group">
              <label>Invite Bonus Amount</label>
              <input type="text" class="form-control" onkeypress="return isNumber(event)" name="ib" id="ib" required value="<?php echo $role['bonusamount'];?>">
              </div>
              </div>
<div class="col-sm-6">
              <div class="form-group">
              <label>Recharge Bonus <i class="red_txt">[in %]</i></label>
              <input type="text" class="form-control" onkeypress="return isNumber(event)" name="rb" id="rb" required value="<?php echo $role['rechargebonus'];?>">
              </div>
              </div>
 <div class="col-sm-6">
              <div class="form-group">
              <label>Level1 Commission Percent <i class="red_txt">[in %]</i></label>
              <input type="text" class="form-control" name="level1" id="level1" required value="<?php echo $role['level1'];?>">
              </div>
              </div>
<div class="col-sm-6">
              <div class="form-group">
              <label>Level2 Commission Percent <i class="red_txt">[in %]</i></label>
              <input type="text" class="form-control"  name="level2" id="level2" required value="<?php echo $role['level2'];?>">
              </div>
              </div>
             <div class="clearfix"></div>   
              <div class="form-group">
              <div class="text-center">
  
 <input type="submit" class="btn btn-primary" value="Submit"  name="submit" ></div>
                </div> 
               </div>
                <div class="clearfix"></div>
             
 

          </form>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
<?php include("include/footer.inc.php"); ?>
</div>

</body>
</html>
