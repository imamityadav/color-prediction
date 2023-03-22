$(document).ready(function () {	
	
$("#addquestionform").on('submit',(function(e) {
		e.preventDefault();
var testid = $('input#testid').val();
var convertedtestid = $('input#convertedtestid').val();
var form_data = new FormData(document.getElementById("addquestionform"));	

		$.ajax({
			type: "POST", 
			url: "addspecificationNow.php",              
			data: form_data, 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			if (html == 1) {
			$("#addquestionform")[0].reset();
			alert("Specification Added Successfully !");
			window.location.href = "";
			}			
			else if(html == 2) 
			{alert("Specification Updated Successfully !");
			window.location.href = "manage_specification.php?id="+convertedtestid;}
			else if(html==0)
			{ alert('Some Technical Error !');
				}
			
			}
		});
	
	}));
	
	
//===================================excel==================================================================

});


