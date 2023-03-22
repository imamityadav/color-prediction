	$.validator.setDefaults({
		submitHandler: function() {
		}
	});

//===============================================login validation=======================================================

		$().ready(function() {
		

$("#changepasswordform").validate({
			
			rules: {
								
			opassword: {
					required: true,
					
				},
				npassword: {
					required: true,
					
				},
				cpassword: {
					required: true,
					
				},
							
			},
			
		});	

	});

$(document).ready(function () { 

//=================================================change password=====================================================
$("#changepasswordform").on('submit',(function(e) {
e.preventDefault();

var opassword = $('input#opassword').val();
var npassword = $('input#npassword').val();
var cpassword = $('input#cpassword').val();

		
if ((opassword)== "") {
            $("input#opassword").focus();
			$('#opassword').addClass('borderline');
            return false;
			}
if ((npassword)== "") {
            $("input#npassword").focus();
			$('#npassword').addClass('borderline');
            return false;
			}
if ((cpassword)== "") {
            $("input#cpassword").focus();
			$('#cpassword').addClass('borderline');
            return false;
			}


		$.ajax({
			type: "POST", 
			url: "changepasswordNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
			
	$('#alert2').modal({backdrop: 'static', keyboard: false})  
     $('#alert2').modal('show');
	 document.getElementById('alertmessage2').innerHTML = "<h4>Success !</h4><p>Password change successfully !</p>";
            return false;

			}	
			else if(arr[0]==2)
			{ 
		$('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Confirm password not matched !</p>";
            return false;

				}
				
				else if(arr[0]==0)
			{ 
		$('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Old password not matched !</p>";
            return false;

				}
			
			}
		});
	
	
}));
//==============================change password end====================================================================

});