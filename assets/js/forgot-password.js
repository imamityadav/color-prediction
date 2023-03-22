	$.validator.setDefaults({
		submitHandler: function() {
		}
	});

//===============================================login validation=======================================================

		$().ready(function() {
		

$("#forgotform").validate({
			
			rules: {
								
			fmobile: {
					required: true,
					number: true,
					minlength: 10
				},
							
			},
			
		});	
	$("#finalforgotform").validate({
			
			rules: {
								
			fnpassword: {
					required: true
					
				},
				fcpassword: {
					required: true
					
				}
							
			},
			
		});			
	});

$(document).ready(function () { 

$("#forgotform").on('submit',(function(e) {
e.preventDefault();

var mobile = $('input#fmobile').val();
	//alert(userammount);	
if((mobile)== "") {
   $("input#mobile").focus();
   $('#fmobile').addClass('borderline');
            return false;
			}

$.ajax({
			type: "POST", 
			url: "chkmobilenumberNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
$('#otpform').modal({backdrop: 'static', keyboard: false})  
$('#otpform').modal('show');
 document.getElementById('userid').value=arr[1];
			}
				
			else if(arr[0]==0)
			{ $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Wrong mobile number entered !</p>";
            return false;
				}
			
			}
		});


	
}));

//=============================payment detail=========================================================================

$("#otpsubmitForm").on('submit',(function(e) {
e.preventDefault();

var otp = $('input#otp').val();
var userid = $('input#userid').val();

		
if ((otp)== "") {
            $("input#otp").focus();
			$('#otp').addClass('borderline');
            return false;
			}

		$.ajax({
			type: "POST", 
			url: "chkmobilenumberNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
			window.location='enter-forgotpassword.php?token='+userid;
			
			}	
			else if(arr[0]==0)
			{ document.getElementById('regtoast').innerHTML = ('<font size="2" style="color:#f00;">Wrong OTP Entered !</font>');
			$('#registertoast').modal({backdrop: 'static', keyboard: false})  
            $('#registertoast').modal('show');
				}
			
			}
		});
	
	
}));
//=================================================change password=====================================================
$("#finalforgotform").on('submit',(function(e) {
e.preventDefault();

var fnpassword = $('input#fnpassword').val();
var fcpassword = $('input#fcpassword').val();
var userid = $('input#userid').val();

		
if ((fnpassword)== "") {
            $("input#fnpassword").focus();
			$('#fnpassword').addClass('borderline');
            return false;
			}
if ((fcpassword)== "") {
            $("input#fcpassword").focus();
			$('#fcpassword').addClass('borderline');
            return false;
			}

		$.ajax({
			type: "POST", 
			url: "chkmobilenumberNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
			
	$('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Success !</h4><p>Password change successfully !</p>";
            return false;

			}	
			else if(arr[0]==2)
			{ 
		$('#alert2').modal({backdrop: 'static', keyboard: false})  
     $('#alert2').modal('show');
	 document.getElementById('alertmessage2').innerHTML = "<h4>Fail !</h4><p>Password not matched !</p>";
            return false;

				}
			
			}
		});
	
	
}));
//==============================change password end====================================================================

});