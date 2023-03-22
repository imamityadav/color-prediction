<?php
$otp='1234';
$fields = array(
    "sender_id" => "FSTSMS",
    "message" => "Brozers Forgot Password OTP is $otp",
    "language" => "english",
    "route" => "p",
    "numbers" => "9718465328",
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
    "authorization: mvG4vlBYX0scnMW7bYfXNhVycLQJBq7p5qFcNrrY8QGmIBZttIWQRglxUPW8",
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
?>