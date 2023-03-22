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
					min: <?php echo minamountsetting($con,'rechargeamount');?>,
                    max: 100000
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
	//alert(userammount);	
if((userammount)== "") {
   $("input#userammount").focus();
   $('#userammount').addClass('borderline');
            return false;
			}
if(userammount<<?php echo minamountsetting($con,'rechargeamount');?>) {
   $("input#userammount").focus();
   $('#userammount').addClass('borderline');
            return false;
			}
if(userammount>100000) {
   $("input#userammount").focus();
   $('#userammount').addClass('borderline');
            return false;
			}
$('#paymentdetail').modal({backdrop: 'static', keyboard: false})  
$('#paymentdetail').modal('show');
 document.getElementById('finalamount').value=userammount;
	
}));

//=============================payment detail=========================================================================

$("#paymentdetailForm").on('submit',(function(e) {
e.preventDefault();
var name = $('input#name').val();
var mobile = $('input#mobile').val();
var email = $('input#email').val();

if ((name)== "") {
            $("input#name").focus();
			$('#name').addClass('borderline');
            return false;
			}
			
if ((mobile)== "") {
            $("input#mobile").focus();
			$('#mobile').addClass('borderline');
            return false;
			}
			
if (mobile.length<10) {
            $("input#mobile").focus();
			$('#mobile').addClass('borderline');
            return false;
			}


if (echeck(email)== "") {
            $("input#email").focus();
			$('#email').addClass('borderline');
            return false;
			}

		$.ajax({
			type: "POST", 
			url: "paymentdetailsessionNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
			window.location.href = "checkout.php";
			}
				
			else if(arr[0]==0)
			{ document.getElementById('serror').innerHTML = ('<font size="2" style="color:#f00;">Some Technical error !</font>');
				}
			
			}
		});
	
	
}));

});