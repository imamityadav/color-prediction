$(document).ready(function () { 

$("#bankcardform").on('submit',(function(e) {
e.preventDefault();

var name = $('input#name').val();
var ifsc = $('input#ifsc').val();
var bank = $('input#bank').val();
var account = $('input#account').val();
var mobile = $('input#mobile').val();
var email = $('input#email').val();
	//alert(userammount);	
if((name)== "") {
   $("input#name").focus();
   $('#name').addClass('borderline');
            return false;
			}
if(ifsc=="") {
   $("input#ifsc").focus();
   $('#ifsc').addClass('borderline');
            return false;
			}
if(bank=="") {
   $("input#bank").focus();
   $('#bank').addClass('borderline');
            return false;
			}
if(account=="") {
   $("input#account").focus();
   $('#account').addClass('borderline');
            return false;
			}
if(mobile=="") {
   $("input#mobile").focus();
   $('#mobile').addClass('borderline');
            return false;
			}
if(email=="") {
   $("input#email").focus();
   $('#email').addClass('borderline');
            return false;
			}


$.ajax({
			type: "POST", 
			url: "addbankcardNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
			$('input#name').val('');
			$('input#ifsc').val('');
			$('input#bank').val('');
			$('input#account').val('');
			$('input#mobile').val('');
			$('input#email').val('');
			$('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Success !</h4><p>Detail added succesfully ! <p></>";
            return false;
			}
			else if(arr[0]==2)
			{ 
  $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Bank detail exist ! <p></>";
            return false;

				}	
			else if(arr[0]==0)
			{ 
  $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Error found !</p>";
            return false;

				}
			
			}
		});
}));



});