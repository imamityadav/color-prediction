<?php 
include("include/connection.php");
include("winnerResult.php");
$current = strtotime(date("Y-m-d 00:00:00"));
$now = strtotime(date("Y-m-d H:i:s"));
$firstperiodid=date('Ymd').sprintf("%03d",1);
$lastperiodid=date('Ymd',strtotime("-1 days")).sprintf("%03d",480);
// echo $lastperiodid;
// exit;

print_r(phpversion());
echo "<br>============================================<br>";

//$truncateQuery=mysqli_query($con,"TRUNCATE TABLE `tbl_game`");
//if($current==$now)
//{
//$sql1=mysqli_query($con,"INSERT INTO `tbl_game` (`gameid`) VALUES ('".$firstperiodid."')");
	//}else{
	
$checkperiod_Query=mysqli_query($con,"select * from `tbl_game` order by id desc limit 1");
$periodRow=mysqli_num_rows($checkperiod_Query);
$periodidRow=mysqli_fetch_array($checkperiod_Query);

if($periodRow==''){
  echo "good";
  exit;
$sql1=mysqli_query($con,"INSERT INTO `tbl_game` (`gameid`) VALUES ('".$firstperiodid."')");
echo "when periodRow is empty";
//php -q 	/usr/local/bin/php /home/popularmall/public_html/uat/wp-cron.php
}else if($lastperiodid==$periodidRow['gameid']) {
  echo "2out";
  exit;
  $truncateQuery=mysqli_query($con,"TRUNCATE TABLE `tbl_game`");
  $truncateResultQuery=mysqli_query($con,"TRUNCATE TABLE `tbl_result`");
    $sql1=mysqli_query($con,"INSERT INTO `tbl_game` (`gameid`) VALUES ('".$firstperiodid."')");  
    echo 'when lastperiodid==$periodidRow["gameid"] ';
}else{
  echo "3out";
  exit;
$nextid=$periodidRow['gameid']+1;
$sql1=mysqli_query($con,"INSERT INTO `tbl_game` (`gameid`) VALUES ('".$nextid."')");
echo 'when $nextid';
	}
	//}
	
?>