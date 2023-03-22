<?php
//include("include/connection.php");
//($con,$period,$number,$result,$openprice,$tabtype);
function resultbyUser($con,$periodid,$number,$result,$openprice,$tabtype){

$color=$result;
$a=explode("+",$color);
$b="'" . implode ( "', '", $a ) . "'";


if($color=='red+violet'){ 
$sqli=mysqli_query($con,"select *, 
CASE WHEN value in('$number',$b) THEN 
CASE 
WHEN value='violet' THEN truncate((amount-(amount/100*2))*4.5,2) 
WHEN value='red' THEN truncate((amount-(amount/100*2))*1.5,2)
WHEN value='green' THEN truncate(((amount-amount/100*2)),2) 
WHEN value='0' THEN (amount-(amount/100*2))*9 
WHEN value='1' THEN (amount-(amount/100*2))*9 
WHEN value='2' THEN (amount-(amount/100*2))*9 
WHEN value='3' THEN (amount-(amount/100*2))*9 
WHEN value='4' THEN (amount-(amount/100*2))*9 
WHEN value='5' THEN (amount-(amount/100*2))*9 
WHEN value='6' THEN (amount-(amount/100*2))*9 
WHEN value='7' THEN (amount-(amount/100*2))*9 
WHEN value='8' THEN (amount-(amount/100*2))*9 
WHEN value='9' THEN (amount-(amount/100*2))*9 END
ELSE 
CASE
WHEN value='green' THEN truncate(((amount-amount/100*2)),2)
WHEN value='violet' THEN truncate((amount-(amount/100*2)),2)
WHEN value='red' THEN truncate((amount-(amount/100*2)),2)
WHEN value='0' THEN (amount-(amount/100*2))
WHEN value='1' THEN (amount-(amount/100*2))
WHEN value='2' THEN (amount-(amount/100*2))
WHEN value='3' THEN (amount-(amount/100*2))
WHEN value='4' THEN (amount-(amount/100*2))
WHEN value='5' THEN (amount-(amount/100*2))
WHEN value='6' THEN (amount-(amount/100*2))
WHEN value='7' THEN (amount-(amount/100*2))
WHEN value='8' THEN (amount-(amount/100*2))
WHEN value='9' THEN (amount-(amount/100*2))END
END AS valueamount,
CASE 
WHEN value in('$number',$b) THEN 
CASE 
WHEN value='green' THEN truncate(((amount/100*2)),2) 
WHEN value='violet' THEN truncate(((amount/100*2)),2) 
WHEN value='red' THEN truncate(((amount/100*2)),2) 
WHEN value='0' THEN ((amount/100*2))
WHEN value='1' THEN ((amount/100*2)) 
WHEN value='2' THEN ((amount/100*2)) 
WHEN value='3' THEN ((amount/100*2)) 
WHEN value='4' THEN ((amount/100*2)) 
WHEN value='5' THEN ((amount/100*2)) 
WHEN value='6' THEN ((amount/100*2)) 
WHEN value='7' THEN ((amount/100*2)) 
WHEN value='8' THEN ((amount/100*2)) 
WHEN value='9' THEN ((amount/100*2)) END
ELSE 
CASE
WHEN value='green' THEN truncate(((amount/100*2)),2)
WHEN value='violet' THEN truncate(((amount/100*2)),2)
WHEN value='red' THEN truncate(((amount/100*2)),2)
WHEN value='0' THEN ((amount/100*2))
WHEN value='1' THEN ((amount/100*2))
WHEN value='2' THEN ((amount/100*2))
WHEN value='3' THEN ((amount/100*2))
WHEN value='4' THEN ((amount/100*2))
WHEN value='5' THEN ((amount/100*2))
WHEN value='6' THEN ((amount/100*2))
WHEN value='7' THEN ((amount/100*2))
WHEN value='8' THEN ((amount/100*2))
WHEN value='9' THEN ((amount/100*2))END
END AS tax,
CASE WHEN value in('$number',$b) THEN 
'success' 
ELSE 'fail'
END as status
from `tbl_betting` where `periodid`='".$periodid."' and `tab`='".$tabtype."'");

}else if($color=='green+violet')
{
$sqli=mysqli_query($con,"select *, 
CASE WHEN value in('$number',$b) THEN 
CASE 
WHEN value='green' THEN truncate((amount-(amount/100*2))*1.5,2)
WHEN value='violet' THEN truncate((amount-(amount/100*2))*4.5,2)
WHEN value='red' THEN truncate((amount-(amount/100*2)),2)
WHEN value='0' THEN (amount-(amount/100*2))*9 
WHEN value='1' THEN (amount-(amount/100*2))*9 
WHEN value='2' THEN (amount-(amount/100*2))*9 
WHEN value='3' THEN (amount-(amount/100*2))*9 
WHEN value='4' THEN (amount-(amount/100*2))*9 
WHEN value='5' THEN (amount-(amount/100*2))*9 
WHEN value='6' THEN (amount-(amount/100*2))*9 
WHEN value='7' THEN (amount-(amount/100*2))*9 
WHEN value='8' THEN (amount-(amount/100*2))*9 
WHEN value='9' THEN (amount-(amount/100*2))*9 END
ELSE 
CASE
WHEN value='green' THEN truncate(((amount-amount/100*2)),2)
WHEN value='violet' THEN truncate((amount-(amount/100*2)),2)
WHEN value='red' THEN truncate((amount-(amount/100*2)),2)
WHEN value='0' THEN (amount-(amount/100*2))
WHEN value='1' THEN (amount-(amount/100*2))
WHEN value='2' THEN (amount-(amount/100*2))
WHEN value='3' THEN (amount-(amount/100*2))
WHEN value='4' THEN (amount-(amount/100*2))
WHEN value='5' THEN (amount-(amount/100*2))
WHEN value='6' THEN (amount-(amount/100*2))
WHEN value='7' THEN (amount-(amount/100*2))
WHEN value='8' THEN (amount-(amount/100*2))
WHEN value='9' THEN (amount-(amount/100*2))END
END AS valueamount,
CASE 
WHEN value in('$number',$b) THEN 
CASE 
WHEN value='green' THEN truncate(((amount/100*2)),2) 
WHEN value='violet' THEN truncate(((amount/100*2)),2) 
WHEN value='red' THEN truncate(((amount/100*2)),2) 
WHEN value='0' THEN ((amount/100*2))
WHEN value='1' THEN ((amount/100*2)) 
WHEN value='2' THEN ((amount/100*2)) 
WHEN value='3' THEN ((amount/100*2)) 
WHEN value='4' THEN ((amount/100*2)) 
WHEN value='5' THEN ((amount/100*2)) 
WHEN value='6' THEN ((amount/100*2)) 
WHEN value='7' THEN ((amount/100*2)) 
WHEN value='8' THEN ((amount/100*2)) 
WHEN value='9' THEN ((amount/100*2)) END
ELSE 
CASE
WHEN value='green' THEN truncate(((amount/100*2)),2)
WHEN value='violet' THEN truncate(((amount/100*2)),2)
WHEN value='red' THEN truncate(((amount/100*2)),2)
WHEN value='0' THEN ((amount/100*2))
WHEN value='1' THEN ((amount/100*2))
WHEN value='2' THEN ((amount/100*2))
WHEN value='3' THEN ((amount/100*2))
WHEN value='4' THEN ((amount/100*2))
WHEN value='5' THEN ((amount/100*2))
WHEN value='6' THEN ((amount/100*2))
WHEN value='7' THEN ((amount/100*2))
WHEN value='8' THEN ((amount/100*2))
WHEN value='9' THEN ((amount/100*2))END
END AS tax,
CASE WHEN value in('$number',$b) THEN 
'success' 
ELSE 'fail'
END as status
from `tbl_betting` where `periodid`='".$periodid."' and `tab`='".$tabtype."'");	
	}else
	{

$sqli=mysqli_query($con,"select *, 
CASE WHEN value in('$number',$b) THEN 
CASE 
WHEN value='green' THEN truncate((amount-(amount/100*2))*2,2)
WHEN value='violet' THEN truncate((amount-(amount/100*2))*4.5,2)
WHEN value='red' THEN truncate((amount-(amount/100*2))*2,2)
WHEN value='0' THEN (amount-(amount/100*2))*9 
WHEN value='1' THEN (amount-(amount/100*2))*9 
WHEN value='2' THEN (amount-(amount/100*2))*9 
WHEN value='3' THEN (amount-(amount/100*2))*9 
WHEN value='4' THEN (amount-(amount/100*2))*9 
WHEN value='5' THEN (amount-(amount/100*2))*9 
WHEN value='6' THEN (amount-(amount/100*2))*9 
WHEN value='7' THEN (amount-(amount/100*2))*9 
WHEN value='8' THEN (amount-(amount/100*2))*9 
WHEN value='9' THEN (amount-(amount/100*2))*9 END
ELSE 
CASE
WHEN value='green' THEN truncate(((amount-amount/100*2)),2)
WHEN value='violet' THEN truncate((amount-(amount/100*2)),2)
WHEN value='red' THEN truncate((amount-(amount/100*2)),2)
WHEN value='0' THEN (amount-(amount/100*2))
WHEN value='1' THEN (amount-(amount/100*2))
WHEN value='2' THEN (amount-(amount/100*2))
WHEN value='3' THEN (amount-(amount/100*2))
WHEN value='4' THEN (amount-(amount/100*2))
WHEN value='5' THEN (amount-(amount/100*2))
WHEN value='6' THEN (amount-(amount/100*2))
WHEN value='7' THEN (amount-(amount/100*2))
WHEN value='8' THEN (amount-(amount/100*2))
WHEN value='9' THEN (amount-(amount/100*2))END
END AS valueamount,
CASE 
WHEN value in('$number',$b) THEN 
CASE 
WHEN value='green' THEN truncate(((amount/100*2)),2) 
WHEN value='violet' THEN truncate(((amount/100*2)),2) 
WHEN value='red' THEN truncate(((amount/100*2)),2) 
WHEN value='0' THEN ((amount/100*2))
WHEN value='1' THEN ((amount/100*2)) 
WHEN value='2' THEN ((amount/100*2)) 
WHEN value='3' THEN ((amount/100*2)) 
WHEN value='4' THEN ((amount/100*2)) 
WHEN value='5' THEN ((amount/100*2)) 
WHEN value='6' THEN ((amount/100*2)) 
WHEN value='7' THEN ((amount/100*2)) 
WHEN value='8' THEN ((amount/100*2)) 
WHEN value='9' THEN ((amount/100*2)) END
ELSE 
CASE
WHEN value='green' THEN truncate(((amount/100*2)),2)
WHEN value='violet' THEN truncate(((amount/100*2)),2)
WHEN value='red' THEN truncate(((amount/100*2)),2)
WHEN value='0' THEN ((amount/100*2))
WHEN value='1' THEN ((amount/100*2))
WHEN value='2' THEN ((amount/100*2))
WHEN value='3' THEN ((amount/100*2))
WHEN value='4' THEN ((amount/100*2))
WHEN value='5' THEN ((amount/100*2))
WHEN value='6' THEN ((amount/100*2))
WHEN value='7' THEN ((amount/100*2))
WHEN value='8' THEN ((amount/100*2))
WHEN value='9' THEN ((amount/100*2))END
END AS tax,
CASE WHEN value in('$number',$b) THEN 
'success' 
ELSE 'fail'
END as status
from `tbl_betting` where `periodid`='".$periodid."' and `tab`='".$tabtype."'");
		}
while($getdataResult=mysqli_fetch_array($sqli))
{
$userid=$getdataResult['userid'];
$userperiodid=$getdataResult['periodid'];
$type=$getdataResult['type'];
$value=$getdataResult['value'];	
$amount=$getdataResult['amount'];
$tab=$getdataResult['tab'];
$paidamount=$getdataResult['valueamount'];
$fee=$getdataResult['tax'];
$status=$getdataResult['status'];
$date=date( 'Y-m-d H:i:s' );

$insertQuery=mysqli_query($con,"INSERT INTO `tbl_userresult` (`userid`, `periodid`, `type`, `value`, `amount`, `openprice`, `tab`, `paidamount`, `fee`, `status`, `createdate`) VALUES ('".$userid."', '".$userperiodid."', '".$type."', '".$value."','".$amount."', '".$openprice."', '".$tab."', '".$paidamount."', '".$fee."', '".$status."','".$date."')");

if($status=='success'){
	
$sql= mysqli_query($con,"INSERT INTO `tbl_order`(`userid`,`transactionid`,`amount`,`status`,`createdate`) VALUES ('".$userid."','".$userperiodid."','".$paidamount."','1','".$date."')");
@$orderid=mysqli_insert_id($con);

$sql3= mysqli_query($con,"INSERT INTO `tbl_walletsummery`(`userid`,`orderid`,`amount`,`type`,`actiontype`,`createdate`) VALUES ('".$userid."','".$orderid."','".$paidamount."','credit','win','".$date."')");

$selectwallet=mysqli_query($con,"select `amount` from `tbl_wallet` where `userid`='".$userid."'");
$walletResult=mysqli_fetch_array($selectwallet);
 	
$finalbalancecredit=$walletResult['amount']+$paidamount;	
$sqlwallet= mysqli_query($con,"UPDATE `tbl_wallet` SET `amount` = '".$finalbalancecredit."' WHERE `userid`= '".$userid."'");
}
}
}
?>

