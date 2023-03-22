<?php
session_start();
include("includes/conn.php");
if (!isset($_SESSION['username']) && $_SESSION['userid'] != true) {
    
    echo "<script>
    window.location = './login';
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
		<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
		  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
		  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
		 

		

		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
		<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.6/css/responsive.bootstrap4.min.css">
		

		<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>
		<script src="https://cdn.datatables.net/responsive/2.2.6/js/dataTables.responsive.min.js"></script>
		<script src="https://cdn.datatables.net/responsive/2.2.6/js/responsive.bootstrap4.min.js"></script>
		
		

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

			.backbtn {
				margin-top: 10px;
				margin-left: 35px;
				width: 30px;
			}
			.heading{
				margin-top: -30px;
				padding-left

				: 30px;
				font-size: 18px;
				margin-left: 40px;
			}

			.upd {
				padding-left: 40px;
			}

			.upd input {
				width: 250px;
			}
			
			
			
			/*My styles*/
			
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
			
			.dataTables_length{
			    /*background-color: red;*/
			    display: flex;
			    align-items: center;
			    margin-left: 20px;
			    margin-bottom: 20px;
			}
			.dataTables_length > label{
			    margin-bottom: 0;
			    font-size: 14px;
			    font-weight: 700 !important;
			    color: black;
			}
			.dataTables_length > label > select{
			    margin: 0 8px 0 19px;
			    /*background: #FFFFFF;*/
			    border: none;
                box-shadow: 0px 1px 50px 1px rgba(0, 0, 0, 0.1);
                border-radius: 5px;
                font-size: 14px;
			    font-weight: 400 !important;
			    color: black !important;
			}
			
			.dataTables_filter{
			    /*background-color: red;*/
			    display: flex;
			    align-items: center;
			    margin-left: 6px;
			    margin-bottom: 40px;
			}
			.dataTables_filter > label{
			    margin-bottom: 0;
			    font-size: 14px;
			    font-weight: 700 !important;
			    color: black;
			    width: 100%;
			}
			.dataTables_filter > label > input{
			    background: #FFFFFF;
			    border: none;
                box-shadow: 0px 1px 50px 1px rgba(0, 0, 0, 0.1);
                border-radius: 5px;
                height: 30px;
                width: 70% !important;
			}
			
			.dataTables_info{
			    text-align: center !important;
			    width: fit-content !important;
			}
			.dataTables_paginate {
			    width: fit-content !important;
			}
			
			/*.col-sm-12.col-md-5{*/
			/*    width: 100% !important;*/
			/*    background-color: red;*/
			/*}*/
			.dataTables_wrapper > .row:last-of-type{
			    flex-direction: column;
			    width: 100%;
			    align-items: center;
			    margin:0 auto !important;
			}
			.dataTables_wrapper > .row:last-of-type > div{
			    min-width: 300px !important;
			    padding: 0 !important;
			    /*background-color: red !important;*/
			}
			.dataTables_wrapper > .row:last-of-type > div > div{
			    margin: 10px auto !important;
			    font-size: 14px;
			    font-weight: 600;
			}
			
			.profileDiv{
			    min-width: 300px !important;
			}
			.dataTables_wrapper > .row{
			    flex-direction: column;
			}
			.dataTables_wrapper > .row > div{
			    min-width: 300px !important;
			}
			.dataTables_wrapper > .row:first-of-type>div{
			    min-width: 100% !important;
			}
			.table{
			    width: fit-content !important;
			    margin: 0 auto;
			}
		</style>

	</head>
	<body class="is-preload" onload="">

		<!-- Bottom Navbar -->
		<?php include("includes/nav.php");?>

		

	<!-- game -->

			<section class="game">

				<div class="row">
					<div class="profileDiv col col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6">
					<a href="profile"><img src="./images/leftArrow.svg"></a>
					<h6 class="heading"><b>Recharge Record</b></h6>	
					</div>
					<div class="col col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="text-align: left;  z-index: 99 !important; margin-top: 20px;">
						
						
					</div>
				</div>	

			
				
			</section>
			
			<section style="margin:20px;margin-bottom: 50px;">
				<div class="table-responsive">
					
				
				<table id="trans" class="table table-striped table-bordered nowrap" style="width:100%">
					<thead>
            <tr>
                <th>Date</th>
                <th>Particulars</th>
                <th>Amount</th>
                
            </tr>
        </thead>
        <tbody>
        	<?php 
        	$sss = mysqli_query($conn, "SELECT * FROM `deposits` WHERE `uid` = '".$_SESSION['userid']."' ORDER BY `id` DESC LIMIT 10 ");

        	while($rrr = mysqli_fetch_array($sss)){        	

        	?>
            <tr style="font-size: 9px;font-weight:600;">
                <td><?php echo $rrr['date'];?></td>
                <td>Top Up - <?php 
                	if($rrr['status'] == 2){
                		echo "<span style='color: #00AB26;'>Success</span>";
                	}else if($rrr['status'] == 1){
                		echo "<span style='color: orange;'>Pending</span>";
                	}else {
                		echo "<span style='color: #E03C3C;'>Failed</span>";
                	}
                ?></td>
                <td><?php if($rrr['status'] == 02){
                		echo "<span style='color: #00AB26;'>";
                	}else if($rrr['status'] == 1){
                		echo "<span style='color: orange;'>";
                	}else {
                		echo "<span style='color: #E03C3C;'>";
                	}?>
                	
                	Coin <?php echo $rrr['amount'];?></span></td>
                
            </tr>
            <?php } ?>
           
        </tbody>
				</table>				
			</div>
			</section>
		
			<?php/* include("includes/footer.php");*/?>


		<!-- Scripts -->
			<script type="text/javascript">
				$(document).ready(function() {
				    $('#trans').DataTable({
				    	order: [[0, 'desc']],
				    });
				} );
			</script>
			<script>
			function goBack() {
			  window.history.back();
			}
			</script>
			<!-- <script src="assets/js/jquery.min.js"></script> -->
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>