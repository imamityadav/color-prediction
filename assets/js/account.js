	$.validator.setDefaults({
		submitHandler: function() {
		}
	});

	$().ready(function() {
		$("#Register").validate({
			
			rules: {
				
			mobile: {
					required: true,
					minlength: 10
				},
				
			email: {
					required: true,
					email: true
				},
				
	
			password: {
					required: true,
					minlength: 5
				},
			// rcode: {
			// 		required: true,
			// 		minlength: 6
			// 	},
				
				remember: "required",
				
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
//===============================================login validation=======================================================
$().ready(function() {
		$("#loginForm").validate({
			
			rules: {
				
			login_mobile: {
					required: true,
					minlength: 10
					
				},
				
			login_password: {
					required: true,
					minlength: 5
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

$("#Register").on('submit',(function(e) {
e.preventDefault();
var mobile = $('input#mobile').val();
var email = $('input#email').val();
var password = $('input#password').val();
var rcode = $('input#rcode').val();
			
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
			
			
if ((password)== "") {
            $("input#password").focus();
			$('#password').addClass('borderline');
            return false;
			}
if (password.length<5) {
            $("input#password").focus();
			$('#password').addClass('borderline');
            return false;
			}
if ((rcode)== "") {
            $("input#rcode").focus();
			$('#rcode').addClass('borderline');
            return false;
			}
if($('#remember').is(':checked')){}
else{return false;}			

		$.ajax({
			type: "POST", 
			url: "registerNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
				$("#Register")[0].reset();
				//window.location.href = "successvisitorNow";
			$('#registerthanksPopup').modal({backdrop: 'static', keyboard: false})  
                   $('#registerthanksPopup').modal('show');
			}
			else if (arr[0]== 2) {
document.getElementById('regtoast').innerHTML = ('<font size="2" style="color:#f00;">Mobile Number allready register with us !</font>');
			$('#registertoast').modal({backdrop: 'static', keyboard: false})  
                   $('#registertoast').modal('show');
			}
			else if (arr[0]== 3) {
document.getElementById('regtoast').innerHTML = ('<font size="2" style="color:#f00;">Wrong recommendation code enter !</font>');
			$('#registertoast').modal({backdrop: 'static', keyboard: false})  
                   $('#registertoast').modal('show');
			}
else if (arr[0]== 4) {
document.getElementById('regtoast').innerHTML = ('<font size="2" style="color:#f00;">Please verify your mobile no. !</font>');
			$('#registertoast').modal({backdrop: 'static', keyboard: false})  
                   $('#registertoast').modal('show');
			}
			else if(arr[0]==0)
			{ document.getElementById('serror').innerHTML = ('<font size="2" style="color:#f00;">Some Technical error !</font>');
				}
			
			}
		});
	
	
}));
//=====================Login Script================================================================

$("#loginForm").on('submit',(function(e) {
e.preventDefault();

var loginmobile = $('input#login_mobile').val();
var loginpassword = $('input#login_password').val();
		
if ((loginmobile)== "") {
            $("input#login_mobile").focus();
			$('#login_mobile').addClass('borderline');
            return false;
			}
if (loginmobile.length<10) {
            $("input#login_mobile").focus();
			$('#login_mobile').addClass('borderline');
            return false;
			}		
			
if ((loginpassword)== "") {
            $("input#login_password").focus();
			$('#login_password').addClass('borderline');
            return false;
			}
			
if (loginpassword.length<5) {
            $("input#login_password").focus();
			$('#login_password').addClass('borderline');
            return false;
			}

		$.ajax({
			type: "POST", 
			url: "loginNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
				window.location.href = "myaccount.php";
			}	
			else if(arr[0]==0)
			{ document.getElementById('regtoast').innerHTML = ('<font size="2" style="color:#f00;">Wrong mobile number or password Entered !</font>');
			$('#registertoast').modal({backdrop: 'static', keyboard: false})  
                   $('#registertoast').modal('show');
				}
			
			}
		});
	
//=====================change password================================================================
	
}));

//================================================match otp===================================================
$("#otpsubmitForm").on('submit',(function(e) {
e.preventDefault();

var otp = $('input#otp').val();

		
if ((otp)== "") {
            $("input#otp").focus();
			$('#otp').addClass('borderline');
            return false;
			}

		$.ajax({
			type: "POST", 
			url: "veryfynumberNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
			$("#otpclose").click();	
	document.getElementById('regtoast').innerHTML = ('<font size="2" style="color:#000;">OTP match successfully !</font>');
			$('#registertoast').modal({backdrop: 'static', keyboard: false})  
            $('#registertoast').modal('show');
			$('#mobile').attr('readonly', true);
			}	
			else if(arr[0]==0)
			{ document.getElementById('regtoast').innerHTML = ('<font size="2" style="color:#f00;">Wrong OTP Entered !</font>');
			$('#registertoast').modal({backdrop: 'static', keyboard: false})  
            $('#registertoast').modal('show');
				}
			
			}
		});
	
//=====================change password================================================================
	
}));



});

function mobileveryfication(){
var mobile = $('input#mobile').val();
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
$.ajax({
    type: "Post",
    data:"mobile=" + mobile+ "& type=" + "mobile",
    url: "veryfynumberNow.php",
	
    success: function (html) { 
	//alert(html);
	 var arr = html.split('~');
	if (arr[0]== 1) {
		//data = JSON.parse(arr[1])
				//alert(data.Status);
				
		//alert(data.Details);
		$('#otpform').modal({backdrop: 'static', keyboard: false})  
          $('#otpform').modal('show');
				
			}
			else if (arr[0]== 2) {
document.getElementById('regtoast').innerHTML = ('<font size="2" style="color:#f00;">Mobile Number allready register with us !</font>');
			$('#registertoast').modal({backdrop: 'static', keyboard: false})  
                   $('#registertoast').modal('show');
			}
      return false;
      },
      error: function (e) {}
      });
	
	}