<?php
ob_start();
session_start();
if($_SESSION['frontuserid']=="")
{header("location:login.php");exit();}

include("include/connection.php");
$category=$_POST['category'];
$userid=$_SESSION['frontuserid'];
$today=date('Y-m-d');
if($category=='parity')
{?>
        <div class="containerrecord text-center">
        <a href="#" class="recordlink">
    <p> <i class="icon ion-md-trophy"></i> <div class="title">Parity Record</div> </p>
    </a>
        </div>
        
        <div class="table-container" id="paritycontainer">
        <table class="table table-borderless table-hover text-center" id="parityt">
        <thead>
        <tr>
        <th>Period</th>
        <th>Price</th>
        <th>Number</th>
        <th>Result</th>
        </tr>
        </thead>
        <tbody>
        <?php
 $parityrecordQuery=mysqli_query($con,"select * from `tbl_result` where `tabtype`='parity' order by id desc limit 480");
 $parityrecordRow=mysqli_num_rows($parityrecordQuery);
 if($parityrecordRow==''){?>
 <tr>
        <td colspan="4">
        <div style="display: flex;">
        <div class="spacer"></div>
        <div>No data available !</div>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php 
		}else{
		while($parityResult=mysqli_fetch_array($parityrecordQuery)){
			if($parityResult['resulttype']=='real'){
			?>
        <tr>
        <td><?php echo $parityResult['periodid'];?></td>
        <td><?php echo $parityResult['randomprice'];?></td>
        <td><span style="color:<?php if($parityResult['color']=='green'){echo"#1DCC70";}else if($parityResult['color']=='red'){echo"#ff2d55";}else if($parityResult['color']=='red+violet'){echo"#ff2d55";}else if($parityResult['color']=='green+violet'){echo"#1DCC70";}?>;"><?php echo $parityResult['result'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($parityResult['color']=='green'){ ?>
        <div class="point green" style="background:#1DCC70;"></div>
        <?php }else if($parityResult['color']=='red'){?>
        <div class="point red" style="background:#ff2d55;"></div>
        <?php }else if($parityResult['color']=='red+violet'){?>
         <div class="point" style="background:#ff2d55;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($parityResult['color']=='green+violet'){?>
 <div class="point" style="background:#1DCC70;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }else if($parityResult['resulttype']=='random'){?>
        <tr>
        <td><?php echo $parityResult['periodid'];?></td>
        <td><?php echo $parityResult['randomprice'];?></td>
        <td><span style="color:<?php if($parityResult['randomcolor']=='green'){echo"#1DCC70";}else if($parityResult['randomcolor']=='red'){echo"#ff2d55";}else if($parityResult['randomcolor']=='red++violet'){echo"#ff2d55";}else if($parityResult['randomcolor']=='green++violet'){echo"#1DCC70";}?>;"><?php echo $parityResult['randomresult'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($parityResult['randomcolor']=='green'){ ?>
        <div class="point green" style="background:#1DCC70;"></div>
        <?php }else if($parityResult['randomcolor']=='red'){?>
        <div class="point red" style="background:#ff2d55;"></div>
        <?php }else if($parityResult['randomcolor']=='red++violet'){?>
         <div class="point" style="background:#ff2d55;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($parityResult['randomcolor']=='green++violet'){?>
 <div class="point" style="background:#1DCC70;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }?>
        <?php }}?>
         </tbody>
          </table>
        </div>
        <div class="containerrecord text-center mt-1">
        <a href="#" class="recordlink">
    <p> <i class="icon ion-md-paper"></i> <div class="title">My Parity Record</div> </p>
    </a>
        </div>
        <div class="table-container">
        <table class="table table-borderless" id="myrecordparityt">
        <thead><tr><th></th></tr></thead>    
    <tbody>
        <div id="paritywait"></div>
    <?php
  $userResultQuery=mysqli_query($con,"select *,(select `result` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultnumber,(select `color` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultcolor from `tbl_userresult` where `userid`='".$userid."' and `tab`='parity' and date(`createdate`)='".$today."' order by id desc limit 480");
  while($userResult=mysqli_fetch_array($userResultQuery)){
	  $post_date = $userResult['createdate'];
 $post_date2 = strtotime($post_date);
 $convert=date('Y-m-d H:i',$post_date2);

	?>
        <tr data-toggle="collapse" data-target="#accordion<?php echo($userResult['id']);?>" class="clickable" style="border-bottom:1px solid #ccc;">
            <td class="pl-3" style="border:none;">
            <?php echo ($userResult['periodid']);?> <span style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"> <?php echo ucfirst($userResult['status']);?> <?php if($userResult['status']=='success'){echo"+";}else{echo"-";}?><?php echo number_format($userResult['paidamount'],2);?></span>
            <div id="accordion<?php echo($userResult['id']);?>" class="detail collapse mt-1 mb-1 p-1" style="padding:0px 30px;">
                <span style="color:#1DCC70"> Period Detail</span>
         <div class="mt-1" style="display: flex;">
        <div class="point2">Periodid</div>
        <div class="point2"><?php echo ($userResult['periodid']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Money</div>
        <div class="point2"><?php echo number_format($userResult['amount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Count</div>
        <div class="point2">1</div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Delivery</div>
        <div class="point2"><?php echo number_format($userResult['amount']-$userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Fee</div>
        <div class="point2"><?php echo number_format($userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Open Price</div>
        <div class="point2"><?php echo number_format($userResult['openprice'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Result</div>
        <div class="point2" style="color:#1DCC70"><?php echo $userResult['resultnumber'].' ';
		$tt=explode("+",$userResult['resultcolor']); echo ucwords(implode(" + ",$tt));?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Select</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"><?php echo $userResult['value'];?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Status</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php echo ucfirst($userResult['status']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Amount</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php if($userResult['status']=='success'){echo"+";}else{echo"-";} echo number_format($userResult['paidamount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Create Time</div>
        <div class="point2"><?php echo $convert;?></div>
        </div>
                </div>
            </td>
        </tr>
        <?php }?>
    </tbody>
</table>
        </div>
        
	
<?php }
else if($category=='sapre')
{?>
	    <div class="containerrecord text-center">
        <a href="gamedashboard.php" class="recordlink">
    <p> <i class="icon ion-md-trophy"></i> <div class="title">Sapre Record</div> </p>
    </a>
        </div>
        <div class="table-container">
        <table class="table table-borderless table-hover text-center" id="sapret">
        <thead>
        <tr>
        <th>Period</th>
        <th>Price</th>
        <th>Number</th>
        <th>Result</th>
        </tr>
        </thead>
        <tbody>
        <?php
 $saprerecordQuery=mysqli_query($con,"select * from `tbl_result` where `tabtype`='sapre' order by id desc limit 480");
 $saprerecordRow=mysqli_num_rows($saprerecordQuery);
 if($saprerecordRow==''){?>
 <tr>
        <td colspan="4">
        <div style="display: flex;">
        <div class="spacer"></div>
        <div>No data available !</div>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php 
		}else{
		while($sapreResult=mysqli_fetch_array($saprerecordQuery)){
			if($sapreResult['resulttype']=='real'){
			?>
        <tr>
        <td><?php echo $sapreResult['periodid'];?></td>
        <td><?php echo $sapreResult['randomprice'];?></td>
        <td><span style="color:<?php if($sapreResult['color']=='green'){echo"#1DCC70";}else if($sapreResult['color']=='red'){echo"#ff2d55";}else if($sapreResult['color']=='red+violet'){echo"#ff2d55";}else if($sapreResult['color']=='green+violet'){echo"#1DCC70";}?>;"><?php echo $sapreResult['result'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($sapreResult['color']=='green'){ ?>
        <div class="point green" style="background:#1DCC70;"></div>
        <?php }else if($sapreResult['color']=='red'){?>
        <div class="point red" style="background:#ff2d55;"></div>
        <?php }else if($sapreResult['color']=='red+violet'){?>
         <div class="point" style="background:#ff2d55;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($sapreResult['color']=='green+violet'){?>
 <div class="point" style="background:#1DCC70;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }else if($sapreResult['resulttype']=='random'){?>
        <tr>
        <td><?php echo $sapreResult['periodid'];?></td>
        <td><?php echo $sapreResult['randomprice'];?></td>
        <td><span style="color:<?php if($sapreResult['randomcolor']=='green'){echo"#1DCC70";}else if($sapreResult['randomcolor']=='red'){echo"#ff2d55";}else if($sapreResult['randomcolor']=='red++violet'){echo"#ff2d55";}else if($sapreResult['randomcolor']=='green++violet'){echo"#1DCC70";}?>;"><?php echo $sapreResult['randomresult'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($sapreResult['randomcolor']=='green'){ ?>
        <div class="point green" style="background:#1DCC70;"></div>
        <?php }else if($sapreResult['randomcolor']=='red'){?>
        <div class="point red" style="background:#ff2d55;"></div>
        <?php }else if($sapreResult['randomcolor']=='red++violet'){?>
         <div class="point" style="background:#ff2d55;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($sapreResult['randomcolor']=='green++violet'){?>
 <div class="point" style="background:#1DCC70;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }?>
        <?php }}?>
         </tbody>
          </table>
        </div>
        <div class="containerrecord text-center mt-1">
        <a href="#" class="recordlink">
    <p> <i class="icon ion-md-paper"></i> <div class="title">My Sapre Record</div> </p>
    </a>
        </div>
        <div class="table-container">
        <table class="table table-borderless" id="myrecordsapret">
        <thead><tr><th></th></tr></thead>    
    <tbody>
        <div id="saprewait"></div>
    <?php
  $userResultQuery=mysqli_query($con,"select *,(select `result` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultnumber,(select `color` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultcolor from `tbl_userresult` where `userid`='".$userid."' and `tab`='sapre' and date(`createdate`)='".$today."' order by id desc limit 480");
  while($userResult=mysqli_fetch_array($userResultQuery)){
	  $post_date = $userResult['createdate'];
 $post_date2 = strtotime($post_date);
 $convert=date('Y-m-d H:i',$post_date2);

	?>
        <tr data-toggle="collapse" data-target="#accordionsapre<?php echo($userResult['id']);?>" class="clickable" style="border-bottom:1px solid #ccc;">
            <td class="pl-3" style="border:none;">
            <?php echo ($userResult['periodid']);?> <span style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"> <?php echo ucfirst($userResult['status']);?> <?php if($userResult['status']=='success'){echo"+";}else{echo"-";}?><?php echo number_format($userResult['paidamount'],2);?></span>
            <div id="accordionsapre<?php echo($userResult['id']);?>" class="detail collapse mt-1 mb-1 p-1" style="padding:0px 30px;">
                <span style="color:#1DCC70"> Period Detail</span>
         <div class="mt-1" style="display: flex;">
        <div class="point2">Periodid</div>
        <div class="point2"><?php echo ($userResult['periodid']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Money</div>
        <div class="point2"><?php echo number_format($userResult['amount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Count</div>
        <div class="point2">1</div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Delivery</div>
        <div class="point2"><?php echo number_format($userResult['amount']-$userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Fee</div>
        <div class="point2"><?php echo number_format($userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Open Price</div>
        <div class="point2"><?php echo number_format($userResult['openprice'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Result</div>
        <div class="point2" style="color:#1DCC70"><?php echo $userResult['resultnumber'].' ';
		$tt=explode("+",$userResult['resultcolor']); echo ucwords(implode(" + ",$tt));?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Select</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"><?php echo $userResult['value'];?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Status</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php echo ucfirst($userResult['status']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Amount</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php if($userResult['status']=='success'){echo"+";}else{echo"-";} echo number_format($userResult['paidamount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Create Time</div>
        <div class="point2"><?php echo $convert;?></div>
        </div>
                </div>
            </td>
        </tr>
        <?php }?>
    </tbody>
</table>
        </div>

<?php	
}else if($category=='bcone')
{
?>
<div class="containerrecord text-center">
        <a href="gamedashboard.php" class="recordlink">
    <p> <i class="icon ion-md-trophy"></i> <div class="title">Bcone Record</div> </p>
    </a>
        </div>        
        <div class="table-container">
        <table class="table table-borderless table-hover text-center" id="bconet">
        <thead>
        <tr>
        <th>Period</th>
        <th>Price</th>
        <th>Number</th>
        <th>Result</th>
        </tr>
        </thead>
        <tbody>
        <?php
 $bconerecordQuery=mysqli_query($con,"select * from `tbl_result` where `tabtype`='bcone' order by id desc limit 480");
 $bconerecordRow=mysqli_num_rows($bconerecordQuery);
 if($bconerecordRow==''){?>
 <tr>
        <td colspan="4">
        <div style="display: flex;">
        <div class="spacer"></div>
        <div>No data available !</div>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php 
		}else{
		while($bconeResult=mysqli_fetch_array($bconerecordQuery)){
			if($bconeResult['resulttype']=='real'){
			?>
        <tr>
        <td><?php echo $bconeResult['periodid'];?></td>
        <td><?php echo $bconeResult['randomprice'];?></td>
        <td><span style="color:<?php if($bconeResult['color']=='green'){echo"#1DCC70";}else if($bconeResult['color']=='red'){echo"#ff2d55";}else if($bconeResult['color']=='red+violet'){echo"#ff2d55";}else if($bconeResult['color']=='green+violet'){echo"#1DCC70";}?>;"><?php echo $bconeResult['result'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($bconeResult['color']=='green'){ ?>
        <div class="point green" style="background:#1DCC70;"></div>
        <?php }else if($bconeResult['color']=='red'){?>
        <div class="point red" style="background:#ff2d55;"></div>
        <?php }else if($bconeResult['color']=='red+violet'){?>
         <div class="point" style="background:#ff2d55;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($bconeResult['color']=='green+violet'){?>
 <div class="point" style="background:#1DCC70;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }else if($bconeResult['resulttype']=='random'){?>
        <tr>
        <td><?php echo $bconeResult['periodid'];?></td>
        <td><?php echo $bconeResult['randomprice'];?></td>
        <td><span style="color:<?php if($bconeResult['randomcolor']=='green'){echo"#1DCC70";}else if($bconeResult['randomcolor']=='red'){echo"#ff2d55";}else if($bconeResult['randomcolor']=='red++violet'){echo"#ff2d55";}else if($bconeResult['randomcolor']=='green++violet'){echo"#1DCC70";}?>;"><?php echo $bconeResult['randomresult'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($bconeResult['randomcolor']=='green'){ ?>
        <div class="point green" style="background:#1DCC70;"></div>
        <?php }else if($bconeResult['randomcolor']=='red'){?>
        <div class="point red" style="background:#ff2d55;"></div>
        <?php }else if($bconeResult['randomcolor']=='red++violet'){?>
         <div class="point" style="background:#ff2d55;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($bconeResult['randomcolor']=='green++violet'){?>
 <div class="point" style="background:#1DCC70;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }?>
        <?php }}?>
         </tbody>
          </table>
        </div>
        <div class="containerrecord text-center mt-1">
        <a href="#" class="recordlink">
    <p> <i class="icon ion-md-paper"></i> <div class="title">My Bcone Record</div> </p>
    </a>
        </div>
        <div class="table-container">
        <table class="table table-borderless" id="myrecordbconet">
        <thead><tr><th></th></tr></thead>    
    <tbody>
        <div id="bconewait"></div>
    <?php
  $userResultQuery=mysqli_query($con,"select *,(select `result` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultnumber,(select `color` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultcolor from `tbl_userresult` where `userid`='".$userid."' and `tab`='bcone' and date(`createdate`)='".$today."' order by id desc limit 480");
  while($userResult=mysqli_fetch_array($userResultQuery)){
	  $post_date = $userResult['createdate'];
 $post_date2 = strtotime($post_date);
 $convert=date('Y-m-d H:i',$post_date2);

	?>
        <tr data-toggle="collapse" data-target="#accordionbcone<?php echo($userResult['id']);?>" class="clickable" style="border-bottom:1px solid #ccc;">
            <td class="pl-3" style="border:none;">
            <?php echo ($userResult['periodid']);?> <span style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"> <?php echo ucfirst($userResult['status']);?> <?php if($userResult['status']=='success'){echo"+";}else{echo"-";}?><?php echo number_format($userResult['paidamount'],2);?></span>
            <div id="accordionbcone<?php echo($userResult['id']);?>" class="detail collapse mt-1 mb-1 p-1" style="padding:0px 30px;">
                <span style="color:#1DCC70"> Period Detail</span>
         <div class="mt-1" style="display: flex;">
        <div class="point2">Periodid</div>
        <div class="point2"><?php echo ($userResult['periodid']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Money</div>
        <div class="point2"><?php echo number_format($userResult['amount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Count</div>
        <div class="point2">1</div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Delivery</div>
        <div class="point2"><?php echo number_format($userResult['amount']-$userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Fee</div>
        <div class="point2"><?php echo number_format($userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Open Price</div>
        <div class="point2"><?php echo number_format($userResult['openprice'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Result</div>
        <div class="point2" style="color:#1DCC70"><?php echo $userResult['resultnumber'].' ';
		$tt=explode("+",$userResult['resultcolor']); echo ucwords(implode(" + ",$tt));?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Select</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"><?php echo $userResult['value'];?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Status</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php echo ucfirst($userResult['status']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Amount</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php if($userResult['status']=='success'){echo"+";}else{echo"-";} echo number_format($userResult['paidamount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Create Time</div>
        <div class="point2"><?php echo $convert;?></div>
        </div>
                </div>
            </td>
        </tr>
        <?php }?>
    </tbody>
</table>
        </div>

<?php
 }else if($category=='emerd')
 {
 ?>
         <div class="containerrecord text-center">
        <a href="gamedashboard.php" class="recordlink">
    <p> <i class="icon ion-md-trophy"></i> <div class="title">Emerd Record</div> </p>
    </a>
        </div>
        <div class="table-container">
        <table class="table table-borderless table-hover text-center" id="emerdt">
        <thead>
        <tr>
        <th>Period</th>
        <th>Price</th>
        <th>Number</th>
        <th>Result</th>
        </tr>
        </thead>
        <tbody>
        <?php
 $emerdrecordQuery=mysqli_query($con,"select * from `tbl_result` where `tabtype`='emerd' order by id desc limit 480");
 $emerdrecordRow=mysqli_num_rows($emerdrecordQuery);
 if($emerdrecordRow==''){?>
 <tr>
        <td colspan="4">
        <div style="display: flex;">
        <div class="spacer"></div>
        <div>No data available !</div>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php 
		}else{
		while($emerdResult=mysqli_fetch_array($emerdrecordQuery)){
			if($emerdResult['resulttype']=='real'){
			?>
        <tr>
        <td><?php echo $emerdResult['periodid'];?></td>
        <td><?php echo $emerdResult['randomprice'];?></td>
        <td><span style="color:<?php if($emerdResult['color']=='green'){echo"#1DCC70";}else if($emerdResult['color']=='red'){echo"#ff2d55";}else if($emerdResult['color']=='red+violet'){echo"#ff2d55";}else if($emerdResult['color']=='green+violet'){echo"#1DCC70";}?>;"><?php echo $emerdResult['result'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($emerdResult['color']=='green'){ ?>
        <div class="point green" style="background:#1DCC70;"></div>
        <?php }else if($emerdResult['color']=='red'){?>
        <div class="point red" style="background:#ff2d55;"></div>
        <?php }else if($emerdResult['color']=='red+violet'){?>
         <div class="point" style="background:#ff2d55;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($emerdResult['color']=='green+violet'){?>
 <div class="point" style="background:#1DCC70;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }else if($emerdResult['resulttype']=='random'){?>
        <tr>
        <td><?php echo $emerdResult['periodid'];?></td>
        <td><?php echo $emerdResult['randomprice'];?></td>
        <td><span style="color:<?php if($emerdResult['randomcolor']=='green'){echo"#1DCC70";}else if($emerdResult['randomcolor']=='red'){echo"#ff2d55";}else if($emerdResult['randomcolor']=='red++violet'){echo"#ff2d55";}else if($emerdResult['randomcolor']=='green++violet'){echo"#1DCC70";}?>;"><?php echo $emerdResult['randomresult'];?></span></td>
        <td>
        <div style="display: flex;">
        <div class="spacer"></div>
        <?php if($emerdResult['randomcolor']=='green'){ ?>
        <div class="point green" style="background:#1DCC70;"></div>
        <?php }else if($emerdResult['randomcolor']=='red'){?>
        <div class="point red" style="background:#ff2d55;"></div>
        <?php }else if($emerdResult['randomcolor']=='red++violet'){?>
         <div class="point" style="background:#ff2d55;"></div>&nbsp;
        <div class="point" style="background:#9c27b0;"></div>
 <?php }else if($emerdResult['randomcolor']=='green++violet'){?>
 <div class="point" style="background:#1DCC70;"></div>&nbsp;
         <div class="point" style="background:#9c27b0;"></div>
        <?php }?>
        <div class="spacer"></div>
        </div>
        </td>
        </tr>
        <?php }?>
        <?php }}?>
         </tbody>
          </table>
        </div>
        <div class="containerrecord text-center mt-1">
        <a href="#" class="recordlink">
    <p> <i class="icon ion-md-paper"></i> <div class="title">My Emerd Record</div> </p>
    </a>
        </div>
        <div class="table-container">
        <table class="table table-borderless" id="myrecordemerdt">
        <thead><tr><th></th></tr></thead>    
    <tbody>
        <div id="emerdwait"></div>
    <?php
  $userResultQuery=mysqli_query($con,"select *,(select `result` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultnumber,(select `color` from `tbl_result` where `periodid`=`tbl_userresult`.`periodid` and `tabtype`=`tbl_userresult`.`tab`)as resultcolor from `tbl_userresult` where `userid`='".$userid."' and `tab`='emerd' and date(`createdate`)='".$today."' order by id desc limit 480");
  while($userResult=mysqli_fetch_array($userResultQuery)){
	  $post_date = $userResult['createdate'];
 $post_date2 = strtotime($post_date);
 $convert=date('Y-m-d H:i',$post_date2);

	?>
        <tr data-toggle="collapse" data-target="#accordionemerd<?php echo($userResult['id']);?>" class="clickable" style="border-bottom:1px solid #ccc;">
            <td class="pl-3" style="border:none;">
            <?php echo ($userResult['periodid']);?> <span style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"> <?php echo ucfirst($userResult['status']);?> <?php if($userResult['status']=='success'){echo"+";}else{echo"-";}?><?php echo number_format($userResult['paidamount'],2);?></span>
            <div id="accordionemerd<?php echo($userResult['id']);?>" class="detail collapse mt-1 mb-1 p-1" style="padding:0px 30px;">
                <span style="color:#1DCC70"> Period Detail</span>
         <div class="mt-1" style="display: flex;">
        <div class="point2">Periodid</div>
        <div class="point2"><?php echo ($userResult['periodid']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Money</div>
        <div class="point2"><?php echo number_format($userResult['amount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Contract Count</div>
        <div class="point2">1</div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Delivery</div>
        <div class="point2"><?php echo number_format($userResult['amount']-$userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Fee</div>
        <div class="point2"><?php echo number_format($userResult['fee'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Open Price</div>
        <div class="point2"><?php echo number_format($userResult['openprice'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Result</div>
        <div class="point2" style="color:#1DCC70"><?php echo $userResult['resultnumber'].' ';
		$tt=explode("+",$userResult['resultcolor']); echo ucwords(implode(" + ",$tt));?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Select</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>"><?php echo $userResult['value'];?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Status</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php echo ucfirst($userResult['status']);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Amount</div>
        <div class="point2" style="color:<?php if($userResult['status']=='success'){echo"#1DCC70";}else{echo"#ff2d55";}?>;"><?php if($userResult['status']=='success'){echo"+";}else{echo"-";} echo number_format($userResult['paidamount'],2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Create Time</div>
        <div class="point2"><?php echo $convert;?></div>
        </div>
                </div>
            </td>
        </tr>
        <?php }?>
    </tbody>
</table>
        </div>

 <?php }?>