<?php
include("include/connection.php");
if(isset($_POST['type']))
{
if($_POST['type']=='chkmobile'){
	
$mobile=$_POST['fmobile'];
$otp=generateOTP();

$checkmobile=mysqli_query($con,"select * from `tbl_user` where `mobile` ='".$mobile."' and `status`='1'");
$row=mysqli_num_rows($checkmobile);
if($row==''){echo"0";}
else{
  $result=mysqli_fetch_array($checkmobile);
  
	session_start();
	unset($_SESSION["forgot_mobile"]);
	unset($_SESSION["forgot_otp"]);
  $_SESSION["forgot_mobile"] = $result['mobile'];
  $_SESSION["forgot_otp"] = $otp;
    
  	
$fields = array(
    "sender_id" => "FSTSMS",
    "message" => "Your verification  code is $otp",
    "language" => "english",
    "route" => "p",
    "numbers" => $result['mobile'],
    "flash" => "1"
);

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://www.fast2sms.com/dev/bulk",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => json_encode($fields),
  CURLOPT_HTTPHEADER => array(
    "authorization: Pgc6VeRS8ToYxqtQ1WyzjU9pi3wIBd4MasK0FlubAOENZ2rfmLsoPjeS0VJ7LqUHkN5GnRATfOKYwElB",
    "accept: */*",
    "cache-control: no-cache",
    "content-type: application/json"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
echo '1~'.encryptor('encrypt', $result['id']);
}
  
}
}
if($_POST['type']=='otpval'){
session_start();
@$otp=$_POST['otp'];
$mobile= $_SESSION["forgot_mobile"];
$sessionotp=$_SESSION["forgot_otp"];

if(strlen($sessionotp!==$otp))  
{
	echo"0";}else{
		

unset($_SESSION["forgot_mobile"]);
unset($_SESSION["forgot_otp"]);
$_SESSION["matched"] = "matched";
		echo"1";}
}

if($_POST['type']=='passwordreset'){
session_start();
@$userid=$_POST['userid'];
$fnpassword= $_POST["fnpassword"];
$fcpassword=$_POST["fcpassword"];

if(strlen($fnpassword!==$fcpassword))  
{
	echo"2";}else{
		
$sql2= mysqli_query($con,"UPDATE `tbl_user` SET `password`='".md5($fcpassword)."' where `id`='$userid'");
unset($_SESSION["matched"]);
		echo"1";}
}

}
?>