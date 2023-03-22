function echeck(str) {
                                var at="@";
                                var dot=".";
                                var lat=str.indexOf(at);
                                var lstr=str.length;
                                var ldot=str.indexOf(dot);
                                if (str.indexOf(at)==-1){
                                    $("#loginerr").html('Invalid E-mail ID');
                                    return false;
                                }
                                
                                if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
                                $("#loginerr").html('Invalid E-mail ID');
                                    //alert("Invalid E-mail ID");
                                    return false;
                                }
                                if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
                                   $("#loginerr").html('Invalid E-mail ID');
                                    return false;
                                }
                                if (str.indexOf(at,(lat+1))!=-1){
                                   $("#loginerr").html('Invalid E-mail ID');
                                    return false;
                                }
                                if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
                                   $("#loginerr").html('Invalid E-mail ID');
                                    return false;
                                }
                                if (str.indexOf(dot,(lat+2))==-1){
                                    $("#loginerr").html('Invalid E-mail ID');
                                    return false;
                                }
                                if (str.indexOf(" ")!=-1){
                                    $("#loginerr").html('Invalid E-mail ID');
                                    return false;
                                }
                                return true;
                            }
$(document).ready(function () { 

$("#envelopeform").on('submit',(function(e) {
e.preventDefault();

var name = $('input#name').val();
var email = $('input#email').val();
var mobile = $('input#mobile').val();

	//alert(userammount);	
if((name)== "") {
   $("input#name").focus();
   $('#name').addClass('borderline');
            return false;
			}
if(mobile=='') {
   $("input#mobile").focus();
   $('#mobile').addClass('borderline');
            return false;
			}

if(echeck(email)=='') {
   $("input#email").focus();
   $('#email').addClass('borderline');
            return false;
			}
 $('#confirm').modal({backdrop: 'static', keyboard: false})  
     $('#confirm').modal('show');

}));
});

function submitenvelope()
{

var name = $('input#name').val();
var email = $('input#email').val();
var mobile = $('input#mobile').val();
var userid = $('input#userid').val();
var action = $('input#action').val();
	
         $.ajax({
			type: "Post",
            data:"name=" + name + "& email=" + email+ "& mobile=" + mobile+ "& userid=" + userid+ "& action=" + action ,
            url: "addenvelopeNow.php",       

			success: function(html)   
			{ //alert(html);
			var arr = html.split('~');
			
			if (arr[0]== 1) {
	$('input#name').val('');
	$('input#mobile').val('');
	$('input#email').val('');
	$('#confirm').modal('hide');
	$('#alert').modal({backdrop: 'static', keyboard: false})  
    $('#alert').modal('show');
	document.getElementById('alertmessage').innerHTML = "<h4>Success !</h4><p>Amount successfully transfered to your wallet ! <p></>";
            return false;
			}
			else if(arr[0]==2)
			{
				$('#confirm').modal('hide'); 
  $('#alert').modal({backdrop: 'static', keyboard: false})  
     $('#alert').modal('show');
	 document.getElementById('alertmessage').innerHTML = "<h4>Fail !</h4><p>Sorry. You have used envelope limit !<p></>";
            return false;

				}	
			
			
			}
		});
	
	}