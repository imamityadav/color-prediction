<?php 
include("include/connection.php");
if($_POST['type']=='generate'){
	$checkperiod_Query=mysqli_query($con,"select * from `tbl_gameid` order by id desc limit 1");
$periodidRow=mysqli_fetch_array($checkperiod_Query);
	echo $periodidRow['gameid'].'~'.'';
//$futureid=$_POST['futureid'];
//$firstperiodid=date('dmY').sprintf("%03d",1);
//if($futureid=='001')
//{
//$checkperiod_Query=mysqli_query($con,"select * from `tbl_gameid` where `gameid`='".$firstperiodid."'");
//$periodidRow=mysqli_num_rows($checkperiod_Query);
//if($periodidRow=='')
//{
//$sql1=mysqli_query($con,"INSERT INTO `tbl_gameid` (`gameid`) VALUES ('".$firstperiodid."')");
//echo $firstperiodid.'~'.($firstperiodid+1);
//	}else{echo $firstperiodid.'~'.($firstperiodid+1);
//	}
//
//}else
//{
//$checkperiod_Query=mysqli_query($con,"select * from `tbl_gameid` where `gameid`='".$futureid."'");
//$periodidRow=mysqli_num_rows($checkperiod_Query);
//if($periodidRow=='')
//{
//$sql1=mysqli_query($con,"INSERT INTO `tbl_gameid` (`gameid`) VALUES ('".$futureid."')");
//echo $futureid.'~'.($futureid+1);
//	}else{
//	echo $futureid.'~'.($futureid+1);;
//	}
//	}
}
?>