<?php
include("include/connection.php");
$periodid='20210623381';
$type1='parity';
$type2='sapre';
$type3='bcone';
$type4='emerd';
$today=date('Y-m-d H:i:s');
if($type4=='emerd')
{
$chkparityQuery=mysqli_query($con,"select * from `tbl_betting` where `periodid`='".$periodid."' and `tab`='emerd'");
$chkparityRow=mysqli_num_rows($chkparityQuery);
if($chkparityRow!=''){
//=========possibility for green type parity
for ($x = 0; $x <= 9; $x++) {
	
if($x==1||$x==3||$x==7||$x==9)	
{//======for green
$color='green';
$greentotal=winner($con,$periodid,$type4,'greenwinamount');
if($settingResult['settingtype']=='high'){
$total=$greentotal+winner($con,$periodid,$type4,$numbermappings[$x].'winamount');
}else if($settingResult['settingtype']=='low'){
$tradeamount=winner($con,$periodid,$type4,'tradeamount');
$att=$greentotal+winner($con,$periodid,$type4,$numbermappings[$x].'winamount');
$total=$tradeamount-$att;
}
}else if($x==2||$x==4||$x==6||$x==8)	
{
$color='red';
$redtotal=winner($con,$periodid,$type4,'redwinamount');
if($settingResult['settingtype']=='high'){
$total=$redtotal+winner($con,$periodid,$type4,$numbermappings[$x].'winamount');
}else if($settingResult['settingtype']=='low'){
$tradeamount=winner($con,$periodid,$type4,'tradeamount');
$att=$redtotal+winner($con,$periodid,$type4,$numbermappings[$x].'winamount');
$total=$tradeamount-$att;
}
	}	
else if($x==0)

{
$color='red+violet';
$redtotal=winner($con,$periodid,$type4,'redwinamountwithviolet');
$vtotal=winner($con,$periodid,$type4,'violetwinamount');
if($settingResult['settingtype']=='high'){
$total=$redtotal+$vtotal+winner($con,$periodid,$type4,$numbermappings[$x].'winamount');	
}else if($settingResult['settingtype']=='low'){
$tradeamount=winner($con,$periodid,$type4,'tradeamount');
$att=$redtotal+$vtotal+winner($con,$periodid,$type4,$numbermappings[$x].'winamount');
$total=$tradeamount-$att;
}
	}	
	
else if($x==5)

{
$color='green+violet';
$redtotal=winner($con,$periodid,$type4,'greenwinamountwithviolet');
$vtotal=winner($con,$periodid,$type4,'violetwinamount');
if($settingResult['settingtype']=='high'){
$total=$redtotal+$vtotal+winner($con,$periodid,$type4,$numbermappings[$x].'winamount');
}else if($settingResult['settingtype']=='low'){
$tradeamount=winner($con,$periodid,$type4,'tradeamount');
$att=$redtotal+$vtotal+winner($con,$periodid,$type4,$numbermappings[$x].'winamount');
$total=$tradeamount-$att;
}
	}	
$sql= mysqli_query($con,"INSERT INTO `tbl_tempwinner`(`periodid`,`number`,`color`,`total`, `type`) VALUES ('".$periodid."','".$x."','".$color."','".$total."','".$type4."')");	
}
//========final Result===================================================
if($switchstatus=='yes' && $switchtab=='emerd')
{
$tempwinQuery=mysqli_query($con,"select `number`,`color`,`total` from `tbl_tempwinner` where `periodid`='".$periodid."' and `number`='".$manualnumber."' and `color`='".$manualcolor."' and `type`='emerd'");
	}
else{
$tempwinQuery=mysqli_query($con,"SELECT `number`,`color`,`total` from `tbl_tempwinner` where `total` = (
select min(`total`)from `tbl_tempwinner` where `total`>=0)and `periodid`='".$periodid."' and `type`='emerd' limit 1");
}
$tempwinResult=mysqli_fetch_array($tempwinQuery);
$tempNumber=$tempwinResult['number'];
$tempColor=$tempwinResult['color'];
$tempTotal=$tempwinResult['total'];
//=================random data=======================================
$randomwinQuery=mysqli_query($con,"select * from `tbl_randomdata` order by RAND() LIMIT 1;");
$randomwinResult=mysqli_fetch_array($randomwinQuery);
$randomPrice=$randomwinResult['price'];
$randomNumber=$randomwinResult['result'];
$randomColor=$randomwinResult['color'];
//=================random data end====================================

$ResultQuery= mysqli_query($con,"INSERT INTO `tbl_result`(`periodid`, `price`, `randomprice`, `result`, `randomresult`, `color`, `randomcolor`, `resulttype`, `tabtype`,`createdate`) VALUES ('".$periodid."','".$tempTotal."','".$randomPrice."','".$tempNumber."','".$randomNumber."','".$tempColor."','".$randomColor."','real','".$type4."','".$today."')");	

//========final Result end===============================================
//============user Result===========================================================
resultbyUser($con,$periodid,$tempNumber,$tempColor,$randomPrice,$type4);
	
}//==========chk sapre===================
else{
//=================random data=======================================
$randomwinQuery=mysqli_query($con,"select * from `tbl_randomdata` order by RAND() LIMIT 1;");
$randomwinResult=mysqli_fetch_array($randomwinQuery);
$randomPrice=$randomwinResult['price'];
$randomNumber=$randomwinResult['result'];
$randomColor=strtolower($randomwinResult['color']);
$heading_new=str_replace("&","",$randomColor);
$newcolor=str_replace(" ","+",$heading_new);
//=================random data end====================================

echo $ResultQuery= ("INSERT INTO `tbl_result`(`periodid`, `price`, `randomprice`, `result`, `randomresult`, `color`, `randomcolor`, `resulttype`, `tabtype``createdate`) VALUES ('".$periodid."','0','".$randomPrice."','0','".$randomNumber."','','".$newcolor."','random','".$type4."','".$today."')");	

//========final Result end===============================================		
	}
}
?>