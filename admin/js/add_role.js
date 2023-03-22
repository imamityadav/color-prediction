$(document).ready(function() 
{
$("#add_role").click(function() 
{ 

var add_item = $('input#add_item').val();
var roleid = $('input#roleid').val();
//alert(newsletter);
if ((add_item)== "") {
           $("#add_itemmsg").html('Please Enter Role!');
            $("input#add_item").focus();
            return false;
        }else{$("#add_itemmsg").html('');
            }


$.ajax({  
    type: "POST",  
    url: "add_roleNow.php",  //file name
    data: "add_item="+ add_item + "& roleid=" + roleid,  //data
    success: function(server_response){  
//alert(server_response);
	if(server_response == '1')//if ajax_check_username.php return value "0"
	{ 
	$("#add_itemmsg").html('<font color="#090">Role Added Sucessfully</font>');
	$('#add_item').val('');
	location.reload();
	}  
	else if(server_response == '2')
	{ 
	$("#add_itemmsg").html('<font color="#090">Role Updated Sucessfully</font>');
	$('#add_item').val('');
	location.reload();
	} 
   else  if(server_response == '0')
	{  
	 $("#add_itemmsg").html('Sorry...Somthing Is Wrong');
	} 
   } 
   
  }); 




return false;
});




});
function riledata(id,type) {
               $.ajax({
                   type: "Post",
                  data:"id=" + id + "& type=" + type,
                   url: "getroledata.php",
                   success: function (html) { //alert(html);
					  
                   $('#role').modal('show');
				   document.getElementById('roleid').value = id; 
				   document.getElementById('add_item').value = html; 
                       return false;
                   },
                   error: function (e) {
                   }
               });

       }
function rolereset() {
    $('#add_item').val('');
	$('#roleid').val('');
} 
