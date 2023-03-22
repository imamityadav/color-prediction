	<?php
include("../../include/connection.php");?>
	
	$.validator.setDefaults({
		submitHandler: function() {
		}
	});

//===============================================login validation=======================================================
$().ready(function() {
		$("#paymentForm").validate({
			
			rules: {
			userammount: {
					required: true,
					number: true,
					min: <?php echo minamountsetting($con,'withdrawalamount');?>,
                    max: 100000
				},
				optionsname : {required :true},
				acid: {
					required: true
					
				},						
			},
			messages: {
				email: "Please enter a valid email address",
				remember: "Please accept our policy",
			}
			
		});

$("#paymentdetailForm").validate({
			
			rules: {
				
			name: {
					required: true,
				},
				
			mobile: {
					required: true,
					number: true,
					minlength: 10
				},
			email: {
					required: true,
				},				
			},
			messages: {
				
				password: {
					required: "Please provide a password",
					minlength: "Your password must be at least 5 characters long"
				},
				
				email: "Please enter a valid email address",
				remember: "Please accept our policy",
			}
			
		});			
	});

$(document).ready(function () { 

$("#paymentForm").on('submit',(function(e) {
e.preventDefault();

var userammount = $('input#userammount').val();
var acid = $('select#acid').val();
	//alert(userammount);	
if((userammount)== "") {
   $("input#userammount").focus();
   $('#userammount').addClass('borderline');
            return false;
			}
if(userammount<<?php echo minamountsetting($con,'withdrawalamount');?>) {
   $("input#userammount").focus();
   $('#userammount').addClass('borderline');
            return false;
			}
if(userammount>100000) {
   $("input#userammount").focus();
   $('#userammount').addClass('borderline');
            return false;
			}
if ($('input[name="optionsname"]:checked').length == 0) {
         return false; 
		 }
if(acid=="") {
   $("select#acid").focus();
   $('#acid').addClass('borderline');
            return false;
			}	

$.ajax({
			type: "POST", 
			url: "withdrawalNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
				$('input#userammount').val('');
			$('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Success !</h4><p>Withdrawal request send succesfully ! <p></>";
            return false;
			}
			else if(arr[0]==2)
			{ 
  $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Payout detail not found ! <br><a href='addbankdetail.php'><i class='fa fa-hand-o-right'></i> Add detail here</a><p></>";
            return false;

				}	
			else if(arr[0]==3)
			{ 
  $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Invalid amount, please try again !</p>";
            return false;

				}
			else if(arr[0]==4)
			{ 
  $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Please try after some time !</p>";
            return false;

				}
			
			}
		});
}));



});