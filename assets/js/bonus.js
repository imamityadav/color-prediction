	$.validator.setDefaults({
		submitHandler: function() {
		}
	});

//===============================================login validation=======================================================
$().ready(function() {
		$("#bonusForm").validate({
			
			rules: {
			bonusammount: {
					required: true,
					number: true,
					min: 100
				},						
			},
			messages: {
				email: "Please enter a valid email address",
				remember: "Please accept our policy",
			}
			
		});

});
$(document).ready(function () { 

$("#bonusForm").on('submit',(function(e) {
e.preventDefault();

var bonusammount = $('input#bonusammount').val();
	//alert(userammount);	
if((bonusammount)== "") {
   $("input#bonusammount").focus();
   $('#userammount').addClass('borderline');
            return false;
			}
if(bonusammount<100) {
   $("input#bonusammount").focus();
   $('#bonusammount').addClass('borderline');
            return false;
			}
			
		$.ajax({
			type: "POST", 
			url: "bonuswithdrawalNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
			$('#bonus').modal('hide');
  $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 var balance=parseFloat(arr[1]).toFixed(2);
	 document.getElementById('bms').innerHTML =balance;
	 document.getElementById('alertmessage').innerHTML = "<h4>Success !</h4><p>Bonus added to wallet succesfully !</p>";
            return false;
			}
			else if(arr[0]==2)
			{
	$('#bonus').modal('hide');
  $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Invalid amount, please try again !</p>";
            return false;

				}	
			else if(arr[0]==0)
			{ document.getElementById('serror').innerHTML = ('<font size="2" style="color:#f00;">Some Technical error !</font>');
				}
			
			}
		});
	
}));

//=============================payment detail=========================================================================


});