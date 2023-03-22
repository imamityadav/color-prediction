		$(document).ready(function () { 
		$("#type").on('submit',(function(e) {
		e.preventDefault();
		
		$.ajax({
			type: "POST", 
			url: "addtestimonialNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			if (html == 1) {
			alert("Testiminial Added Successfully...");			
            $("#type")[0].reset();
			  window.location ='';
			}
			else if(html==2)
			{ alert("Testiminial Save Successfully...");
			  window.location ='manage_testimonial.php';
		
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
                   url: "gettestimonialdata.php",
                   success: function (html) { //alert(html);
				   var arr = html.split('~');
					$('#excel').modal({backdrop: 'static', keyboard: false})  
                   $('#excel').modal('show');
				   document.getElementById('chn').innerHTML = 'Edit Testimonial';
				   document.getElementById('editid').value = id; 
				   document.getElementById('name').value = arr[1];
				   document.getElementById('company').value = arr[2];
				   document.getElementById('designation').value = arr[3];
				   document.getElementById('text').value = arr[0];    
                       return false;
                   },
                   error: function (e) {
                   }
               });

       }


function selecttype(a){
	if(a=='text'){
		$("#textarea").show();
		$("#videoarea").hide();
	}
	else if(a=='video'){
		$("#videoarea").show();
		$("#textarea").hide();
	}
	}
	
