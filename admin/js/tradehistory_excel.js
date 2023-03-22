		$(document).ready(function () { 
		$("#formID").on('submit',(function(e) {
		e.preventDefault();
var userid = $('select#userid').val();
var tabtype = $('select#tabtype').val();
var periodid = $('input#periodid').val();
var startdate = $('input#startdate').val();
var enddate = $('input#enddate').val();
var startdate1 = startdate.split('-');
var enddate1 = enddate.split('-');

function addDays(theDate, days) {
    return new Date(theDate.getTime() + days*24*60*60*1000);
}


var newstartDate =new Date( startdate1[2] + '-' + startdate1[1] + '-' + startdate1[0].slice(-2));
var newendDate = new Date(enddate1[2] + '-' + enddate1[1] + '-' + enddate1[0].slice(-2));
var newDate = addDays(newstartDate, 30);
//alert(tabtype);
if(newendDate<newstartDate){
alert('End date must be greater than start date');
return false;
}
if(newendDate>newDate){
alert('More than 30 days not allowed');
return false;
}
		$.ajax({
			type: "POST", 
			url: "usertradehistoryExcelNow.php",              
			data: new FormData(this), 
			contentType: false,       
			cache: false,             
			processData:false,       

			success: function(html)   
			{ //alert(html);
			if(html==1){
				window.open('usertradehistoryExcelNow.php?startdate='+startdate+ "& enddate=" + enddate+ "& userid=" + userid+ "& tabtype=" + tabtype+ "& periodid=" + periodid);		
				}
			
		else if(html==2)
			{ alert("Data not found according to your search...");
				}
			
			
			}
		});
	
	}));
	
	
	
});

