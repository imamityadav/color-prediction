<?php
session_start();
include("include/connection.php");
error_reporting(1);
if (!isset($_SESSION['mobile']) && !isset($_SESSION['frontuserid'])) {
echo "<script> 
window.location = './login.php';
</script>";
} 
?>
<?php 
if(isset($_POST['submit'])){
    
    $ref_num = $_POST['refrence'];
    $amt = $_POST['deposit'];
    $email = $_POST['email'];
    $uid = $_SESSION['frontuserid'];

    date_default_timezone_set('Asia/Calcutta');
    $today = date("F j, Y, g:i a"); 
    $deposit = mysqli_query($con, "INSERT INTO `deposits`(`ref_num`, `amount`, `email`, `status`, `uid`, `date`) VALUES('$ref_num', '$amt', '$email', '1','$uid', '$today')");

    if($deposit){
        echo "<script>
        window.location = './record-recharge.php';
    </script>";
    }else{
        echo "Payment failed"; 
    }
}
?>

<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
       
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
       <title>colorslife</title>
        <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" data-react-helmet="true" />
        <style>
        	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap');

            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif !important;
            }
            body{
                background-color: #FFF;
                margin: 0 auto;
                padding: 0;
                max-width: 375px;
            }
            .logo{
                font-size: 26px;
                color: #0081FF;
                padding: 20px 0;
                font-weight: bold;
                text-align: center;
                text-shadow: 1px 1px 1px rgba(0,0,0,.1);
            }
            .nav-tabs>li>a{
                color: black ;
                font-weight: bold !important;
            }
            .active>a{
                color: #0081FF !important;
            }
            h1{
                width: 100%;
                font-size: 16px;
                padding: 30px 20px 0 20px;
                color: #121212;
                margin: 0 auto;
                font-weight: 400;
            }
            h5{
                padding: 30px 20px 0 20px;
                width: 500px;
                margin: 0 auto;
                font-size: 14px;
                color: #121212;
            }
            h2{
                width: 320px;
                font-size: 12px;
                color: #999;
                font-weight: 400;
                padding: 0 10px;
                margin: 0 auto;
                line-height: 1.5;
            }

            h2 span{
                color: #666;
            }
            .box{
                height: auto;
                margin: 20px auto;
                border: 3px solid #0081FF !important;
                box-sizing: border-box;
                /*box-shadow: none;*/
                border-radius: 5px;
            }
            .box p{
                border-bottom: 1px solid #CCC;
                margin: 0;
                line-height: 36px;
                padding: 5px 10px;
            }
            .box p:last-child{
                border: 0 none;
            }
            .box .label{
                font-size: 14px;
                color: #666;
                display: block;
                text-align: left;
                margin-right: 10px;
                line-height: 1.2;
                vertical-align: middle;
            }
            .box .value{
                font-size: 14px;
                color: #000;
                display: inline-block;
                width:auto;
                font-weight: bold;;
                line-height: 1.2;
                vertical-align: middle;
            }
            .box button{
                vertical-align: middle;;
            }
            .toast{
                height: 60px;
                width: 140px;
                background-color: rgba(0,0,0,.5);
                border-radius: 5px;
                position:absolute;
                left: 50%;
                top: 30%;
                margin-left: -70px;
                margin-top: -30px;
                line-height: 60px;
                color: #FFF;
                text-align: center;
                white-space: nowrap;
            }
            
            .center {
              line-height: 1.5;
              display: inline-block;
              vertical-align: middle;
            }
            .container{
                width :100%;
                padding: 0 !important;
            }
            .tab-content{
                width: 100% !important;
            }
            .tab-content>div>h1{
                width: 100% !important;
            }
            .box{
                width: 100% !important;
                padding: 10px ;
            }
            .value{
                padding: .2em .6em .3em !important;
            }
            .copyBtn{
                float: right;
                background-color: #0081FF !important;
                color: white !important;
                font-weight: bold;
            }
            .paymentRefForm{
                display: flex;
                flex-direction: column;
            }
            .paymentRefForm>.form-group>label{
                font-weight: bold !important;
                padding-left: 7px;
            }
            .paymentRefForm>.form-group>input{
                background-color: white;
                font-size: 12px;
                border: none;
                box-shadow: 0px 1px 50px 1px rgba(0, 0, 0, 0.1) !important;
                border-radius: 5px;
            }
            .submitBtn{
                margin: 0 auto !important;
                background-color: #0081FF !important;
                color: white;
                font-weight:bold;
                margin-top: 16px !important;
            }
        </style>
    </head>
    <body>
        <div class="logo">
            <span>PAYMENT</span>
        </div>
        <div class="title">
            <!-- <h5>Deposit the Payment amount to below this upi or bank account below. </h5> -->
        </div>
<!-- BANK AND UPI SECTION START  -->
<div class="container">
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home">UPI</a></li>
        <li><a data-toggle="tab" href="#menu1">BANK</a></li>
    </ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
        <h1><b>Step 1. <br> Copy UPI Information</b></h1>
        <div class="box" style="margin-bottom: 0;">        
            <p>
                <!--<span class="label">Upi Id.&nbsp;: (upi)</span>-->
                <span class="label">UPI ID</span>
                <span class="value">mastermindbetone@airtel</span>
                <button class="btn copyBtn" data-clipboard-text="mastermindbetone@airtel">Copy</button>
            </p>
           
        </div>
  </div>
  <div id="menu1" class="tab-pane fade">    
        <h1><b>Step 1. <br>Copy Bank Information</b></h1>
        <div class="box" style="margin-bottom: 0;">
        
            <p>
                <span class="label">Account No.&nbsp;:</span>
                <span class="value">787787878788787</span>
                <button  class="btn copyBtn" data-clipboard-text="787787878788787">Copy</button>
            </p>
            <p>
                <span class="label">IFSC Code&nbsp;:</span>
                <span class="value">IOIOIOI</span>
                <button class="btn copyBtn" data-clipboard-text="IOIOIOI">Copy</button>
            </p>
             <p>
                <span class="label">Bank Name&nbsp;:</span>
                <span class="value">PREMIUM </span>
                <button class="btn copyBtn" data-clipboard-text="PREMIUM">Copy</button>
            </p>
             <p>
                <span class="label">Name&nbsp;:</span>
                <span class="value">PREMIUM </span>
                <button class="btn copyBtn" data-clipboard-text="PREMIUM">Copy</button>
            </p>
        </div>    
  </div>
</div>
<div>
<h1><b>Step 2.<br> Open online banking or wallet, transfer the amount to the UPI account or bank</b></h1>
</div>
<!-- BANK AND UPI SECTION END  -->
<!-- PAYMENT VERIFICATION START  -->
<div><h1><b>Step 3. <br>Enter Payment details below and complete Recharge.</b></h1></div>
<div class="box" style="padding:30px;border:4px solid black">
<form class="paymentRefForm" action="" method="POST" autocomplete="off">
    <div class="form-group">
        <label style="margin:0;">Payment Reference Number</label>
        <div><span style="color:#0081FF; font-size:12px;">* copy reference number from your transaction and paste here</span></div>
        <input class="form-control" type="text" name="refrence" placeholder="Enter Payment Reference Number" required>
        
    </div>
    <div class="form-group">
        <label style="">Deposit Amount</label>
        <input class="form-control" type="text" name="deposit" placeholder="Enter Amount" required>
    </div>
    <div class="form-group">
        <label>Registerd Phone Number</label>
        <input class="form-control" type="email" name="email" placeholder="Enter Registerd Phone Number" required>
    </div>
    <input class="btn  btn-primary submitBtn" type="submit" name="submit" value="Submit" >
</form>
</div>
</div>
<!-- PAYMENT VERIFICATION END  -->


        
    

        <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.6/clipboard.min.js"></script>
        <script type="text/javascript">
            function showToast(text){
                var ele = document.createElement("div");
                ele.className = "toast";
                ele.innerHTML = text;
                document.body.appendChild(ele);
                setTimeout(function(){
                    document.body.removeChild(ele);
                }, 2000)
            }
            var btns = document.querySelectorAll('.btn');
            var clipboard = new ClipboardJS(btns);
            clipboard.on('success', function(e) {
                showToast("COPY SUCCESS");
            });

            clipboard.on('error', function(e) {
                showToast("COPY FAIL");
            });
            
        </script>
    </body>
</html>