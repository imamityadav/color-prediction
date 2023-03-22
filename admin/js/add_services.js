		$(document).ready(function () { 
		$("#type").on('submit',(function(e) {
		e.preventDefault();
		$('#loadermodal').show();
		$.ajax({
			type: "POST", 
			url: "addservicesNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			$('#loadermodal').hide();
			if (html == 1) {
			alert("Added Successfully...");			
            $("#type")[0].reset();
			  $('#excel').modal('hide');
			  window.location ='';
			}
			else if(html==2)
			{ alert("Save Successfully...");
			$('#excel').modal('hide');
			  window.location ='';
		
				}
				else if(html==3)
			{ 
		document.getElementById('error').innerHTML = ('<font size="2" style="color:#f00;">All ready exist !</font>');
				}
			else if(html==0)
			{ alert("Some Technical Error....");		
				}
			
			}
		});
	
	}));
	
	
	
});

function typedata(id,type) {
               $.ajax({
                   type: "Post",
                  data:"id=" + id + "& type=" + type,
                   url: "getservicesdata.php",
                   success: function (html) { //alert(html);
				   var arr = html.split('~');
					$("#material").prop("required", false);  
                   $('#excel').modal('show');
				   document.getElementById('chn').innerHTML = 'Edit Service';
				   document.getElementById('error').innerHTML = '';
				   document.getElementById('editid').value = id;
				   document.getElementById('add_item').value = arr[0]; 
				   
                       return false;
                   },
                   error: function (e) {
                   }
               });

       }
function rolereset() {
    $('#add_item').val('');
	$('#sd').val('');
	$('#editid').val('');
	document.getElementById('chn').innerHTML = 'Add Service';
	document.getElementById('error').innerHTML = '';
} 
