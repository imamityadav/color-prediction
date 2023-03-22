$(document).ready(function(){
$(".resetpassword").on('submit',(function(e) {
		e.preventDefault();
        var nnewpassword = $('input#nnewpassword').val();
		var ccpassword = $('input#ccpassword').val();
 
if (nnewpassword == "") {  
			$("input#nnewpassword").focus();  
			return false;}
if (ccpassword == "") {  
			$("input#ccpassword").focus();  
			return false;}
		$.ajax({
			      
			type: "POST", 
			url: "reset_password.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			if (html == 1) {
				alert("Password Reset Successfully......");
    $('#nnewpassword').val('');
    $('#ccpassword').val('');
    $('#password').modal('hide');
	
			}
			else if(html==2)
			{  
    document.getElementById('matchresponse').innerHTML = ('<span style="color:#f00;">Confirm Password Not Matched...</span>');
				}
			}
		});
	
	}));
	});