		$(document).ready(function () { 
		$("#type").on('submit',(function(e) {
		e.preventDefault();
		
		$.ajax({
			type: "POST", 
			url: "addbannerNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			if (html == 1) {
			alert("Banner Added Successfully...");			
            $("#type")[0].reset();
			  $('#excel').modal('hide');
			  window.location ='';
			}
			else if(html==2)
			{ alert("Banner Save Successfully...");
			$('#excel').modal('hide');
			  window.location ='';
		
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
                   url: "getbannerdata.php",
                   success: function (html) { //alert(html);
				   var arr = html.split('~');
				   //alert(id);
					$('#excel').modal({backdrop: 'static', keyboard: false})  
                   $('#excel').modal('show');
				   document.getElementById('chn').innerHTML = 'Edit Banner';
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
	document.getElementById('chn').innerHTML = 'Add Banner';
} 

CKEDITOR.replace( 'content',
				{
				fontSize_sizes : "8/80%;9/90%;10/100%;12/120%;14/135%;16/160%;18/180%;20/200%;24/240%;26/260%;28/280%;36/360%;48/480%;72/650%;",
					toolbar :
					[
					['Source'],['Table','Bold', 'Italic','Underline'],
						['JustifyLeft','-','JustifyCenter'],
						['JustifyRight','-','JustifyBlock'],
['NumberedList','BulletedList','Link', 'Unlink'],['TextColor'],
					],
				
		extraPlugins : 'uicolor',
		height: '190px',
		} );