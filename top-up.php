<?php
session_start();
error_reporting(E_ALL ^ E_WARNING);
include("includes/conn.php");
ini_set('max_execution_time', 900);
if (!isset($_SESSION['username']) && $_SESSION['userid'] != true) {
    
    echo "<script>
    window.location = './login.php';
</script>";

} 
?>

<!DOCTYPE HTML>

<html>
	<head>
		<?php include("includes/title.php");?>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />

		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/nav.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>

		

		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

		

		

		<style type="text/css">
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap');
		html, body{
				margin: 0;
				/*overflow-x: hidden;*/
			}
			 *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif !important;
            }
            body{
			    padding-top: 0 !important;
			    max-width: 375px;
			    margin: 0 auto;
			    margin-top: 10px;
			    background-color: #fff !important;
			    padding-bottom: 75px;
			}
		.game{

				width: 96%;
				margin: 0 auto;
				background-color: #0081FF;
				padding-top: 30px;
				height: 155px;
				border-radius: 6px;
			}

            
            #deposit .path {
				fill: #0081FF !important;
	            stroke: #0081FF !important;
			}
			#deposit>p{
				color:#0081FF;
			}

			

			.game .row p{
				margin-left: 20px;
			}

			.game .price {
				color: #000;
				margin-left: 20px;
				margin-top: -4px;
			}

			@media (max-width: 350px) {
  				.col{
  					width: 50%;
  				}
			}

			.profilePic {
			   text-align: left;
			   margin: 8px 0 12px 0;
			   margin-left: 50px;
			}
			img.avatar {
			   width: 70px;
			   height: 70px;
			   border-radius: 50%;
			}

			.price-section  label { 
      border: 1px solid green;
      padding-top: 5px;
      padding-left: 25px;
      padding-bottom: 10px;
      padding-right: 20px;
      margin-top: 10px;
      margin-bottom: 10px;
      width: 30%;
      text-align: center;
      

}

.price-section{
	margin-left: 0px;
	text-align: center;

}


/*@media (min-width: 900px) {*/
/*	.price-section{*/
/*		margin-right: 200px;*/
/*		margin-left: 200px;*/
/*	}*/
/*}*/




.price-section input:focus ~ label {
       border-color: yellow; /* WHEN "input:blur" <label> border-color should be yellow */
}

.backbtn {
				margin-top: 10px;
				margin-left: 15px;
			}
			.heading{
				margin-top: -25px;
				padding-left: 10px;
				font-size: 18px;
				margin-left: 40px;
			}


        /*My Styles*/
        .game{
            width:96%;
            margin: 0 auto;
            margin-top: 10px !important;
            border-radius: 6px;
            background-color: #0081FF !important;
            color: white;
        }
        .rechargeDiv{
            padding: 0 !important;
            width: calc(50% - 18px) !important;
            display: flex;
            align-items: center;
            position: relative;
            bottom: 30px;
            margin-left: 18px;
        }
        .rechargeDiv>a>button{
            margin: 0;
            padding: 0 0;
            border: none;
            box-shadow: none;
            font-weight: 400;
            font-size: 30px;
            width: fit-content;
            height: fit-content;
            color: white !important;
        }
        .heading{
            margin: 0 !important;
            text-transform: none;
            font-size: 16px;
            font-weight: bold;
        }
        .moneyCon{
            margin: 0 !important;
            padding: 0 !important;
            width: calc(50% - 18px) !important;
            position: relative;
            bottom: 10px;
            margin-right: 18px;
        }
        
        .moneyCon>h3{
            margin: 0 !important;
            font-size: 24px !important;
            font-weight: bold;
            margin-bottom: 10px !important;
            color: white !important;
        }
        .moneyCon>h3>small{
            color: black;
            color: white !important;
        }
         .moneyCon>p{
            margin: 0 !important;
            font-size: 16px;
            font-weight: 500;
        }
        
        .secCon{
            width: 100% !important;
            margin: 0 !important;
        }
        .enterAmount{
            margin: 0 auto !important;
            border: none !important;
            background-color: white !important;
            box-shadow: 0px 1px 50px 1px rgba(0, 0, 0, 0.14);
            width: 90% !important;
            height: 45px !important;
            font-size: 12px !important;
            padding-left: 15px !important;
            color: #6D6D6D;
            font-weight: 300;
        }
        .radiosContainer{
            width: 90% !important;
            margin: 0 auto !important;
            display: flex !important;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .radiosRow{
            display: flex !important;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }
        .radiosRow>label{
            margin: 5px 0 !important;
            padding: 0 !important;
            font-size: 14px !important;
            font-weight: 400 !important;
            color: black;
            width: 30% !important;
            height: 35px;
            display: flex;
            justify-content: center !important;
            align-items: center !important;
            border: none !important;
            box-shadow: 0px 1px 50px 1px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        .radiosRow>label>input{
            margin: 0 !important;
            padding: 0 0 0 0 !important;
            position: relative !important;
        }
        .radiosRow>label>span{
            padding-left: 4px;
        }
        input.rechargeBtn{
            width: fit-content !important;
            font-size: 12px !important;
            font-weight: bold !important;
            background-color: #0081FF !important;
            padding: 0 20px !important;
            color: white !important;
            border: none !important;
            box-shadow: none !important;
            margin-left:0 !important;
        }
        
        
        
        
        
        
        
        
        .game > .row{
			    width: 100%;
			    margin: 0 !important;
			}
			.profileDiv{
			    padding: 0 !important;
			    display: flex;
			    align-items: center;
			    position: relative;
			    bottom: 12px;
			    margin-left: 15px;
			}
			.backbtn{
			    margin: 0 2px 0 0 !important;
			    border: none;
			    box-shadow: none !important;
			    font-size: 30px;
			    display: flex;
			    align-items: center;
			    justify-content: flex-start;
			    padding: 0px !important;
			    color: white !important;
			}
			.backbtn:focus{
			    text-transform: none !important;
			    outline: none !important;
			    color: white !important;
			    background-color: transparent;
			}
			.backbtn:active{
			    text-transform: none !important;
			    outline: none !important;
			    color: white !important;
			    background-color: transparent;
			}
			.heading{
			    padding: 0px 0 0 8px !important;
			    margin: 0 !important;
			    position: relative;
			    bottom: 0px;
			}
			.heading > b{
			    color: white !important;
			    text-transform: none !important;
			    font-size: 16px !important;
			}
			.game{
			    padding: 30px 0 0 0 !important;
			}
		</style>

	</head>
	<body class="is-preload" onload="">
		<input type="hidden" name="page" id="page" class="page" value="top-up">
		<!-- Bottom Navbar -->
		<?php include("includes/nav.php");?>

		

	<!-- game -->

			<section class="game">

				<div class="row secCon">
					<div class="col col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6 rechargeDiv">
						<a href="index.php"><img src="./images/leftArrow.svg"></a>
					<h6 class="heading">Recharge</h6>
						
					</div>
					<div class="col col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6 moneyCon" style="text-align: right;  z-index: 99 !important; margin-top: 20px; padding-right: 50px;position:relative;top:10px">
						
						<h3 class="price"><small>₹</small> 
							<?php 
							$sd = mysqli_query($conn, "SELECT * FROM `wallet` WHERE `uid`= '".$_SESSION['userid']."'");
							$rrq = mysqli_fetch_array($sd);

							echo $rrq['amount'];
							?>
						</h3>
						<p>Available Balance</p>
					</div>
				</div>	

			
				
			</section>

<section style="margin-bottom: 50px;">
				
	<div class="row" style="">
		<div class="col-lg-12 col-xl-12 col-md-12 col-sm-12 col-xs-12">
			<div class="well" style="background-color:transparent;border: 0;">
				<div style="text-align: center;">
				
				<!--<h6 style="color: orange; font-size: 20px;"> Select Recharge Amount</h6>-->
								
				<h6>
				<?php
			        //   $fet = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM `recharge_bonus`"));
			        //   echo $fet['bonus_text'];
				?>
				</h6>
			
			</div>
			<?php  
			    $a = $_SESSION['userid'];   
			?>
 
<form method="POST" action="payment">
     
     <div style="" class="price-section" >

        <input type="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20" name="ORDER_ID" autocomplete="off" value="<?php echo  "ORDS" . rand(10000,99999999);?>">
	
	    <input type="hidden" id="CUST_ID" tabindex="2" maxlength="12" size="12" name="CUST_ID" autocomplete="off" value="<?php echo $a;?>">

	    <input type="hidden" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail">

        <input type="hidden" id="CHANNEL_ID" tabindex="4" maxlength="12" size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">

        <input title="TXN_AMOUNT" class="form-control enterAmount" tabindex="10" size="10" type="number" name="TXN_AMOUNT" value="" placeholder = "Enter Amount" style="width:50%;margin-left: 50px"> 

        <br>
        <div class="radiosContainer">
            <div class="radiosRow">
                <label class="radio-inline" style="margin-top: 0px; margin-left: 10px">
            	<input type="radio" name="TXN_AMOUNT" value="200" checked>
            	<span style="font-size: 12px;">200</span>
            	</label>
            							  
            	<label class="radio-inline">
            	<input type="radio" name="TXN_AMOUNT" value="300">
            	<span style="font-size: 12px;">300</span>
            	</label>
            							    
            	<label class="radio-inline">
            	<input type="radio" name="TXN_AMOUNT" value="500">
            	<span style="font-size: 12px;">500</span>
            	</label>
            </div>
            
            <div class="radiosRow">
            	<label class="radio-inline">
            	<input type="radio" name="TXN_AMOUNT" value="1000">
            	<span style="font-size: 12px;">1000</span>
            	</label>
            							    
            	<label class="radio-inline">
            	<input type="radio" name="TXN_AMOUNT" value="2000">
            	<span style="font-size: 12px;">2000</span>
            	</label>
            							    
            	<label class="radio-inline">
            	<input type="radio" name="TXN_AMOUNT" value="4000">
            	<span style="font-size: 12px;">4000</span>
            	</label>
            </div>
		</div>					   
    	<br>
    	<div style="text-align: center">
    	<input class="rechargeBtn" style="margin-left: 10px;width: 95%;" type="submit" class="btn btn-md btn-success"  name="deposit" value="RECHARGE">
    	<br>
    	</div>
    	</div>
    
    	</form>
	
	
	</div>
        </div>					
        </div>


				
				
				
				
				


			</section>


			<!--<?php include("includes/footer.php");?>-->







		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/page.js"></script>

	</body>
</html>