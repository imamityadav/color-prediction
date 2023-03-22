<?php
@$userid=$_POST['userid'];
include("include/connection.php");
 echo number_format(wallet($con,'amount',$userid), 2); 
 ?>
