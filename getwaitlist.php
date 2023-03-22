<?php
ob_start();
session_start();
if($_SESSION['frontuserid']=="")
{header("location:login.php");exit();}

include("include/connection.php");
$category=$_POST['category'];
$userid=$_SESSION['frontuserid'];
$periodid=$_POST['periodid'];
$today=date('Y-m-d');
if($category!='')
{?>
        
        <div class="table-container">
        <table class="table table-borderless">
        <thead><tr><th></th></tr></thead>    
    <tbody>
     <?php
  $userWaitQuery=mysqli_query($con,"select * from `tbl_betting` where `userid`='".$userid."' and `tab`='".$category."' and `periodid`='".$periodid."' order by id desc limit 480");
  while($userResult=mysqli_fetch_array($userWaitQuery)){
	  $post_date1 = $userResult['createdate'];
 $post_date21 = strtotime($post_date1);
 $convert1=date('Y-m-d',$post_date21);

	?>
        <tr data-toggle="collapse" data-target="#accordion<?php echo($userResult['id']);?>" class="clickable" style="border-bottom:1px solid #ccc;">
            <td class="pl-3" style="border:none;">
            <?php echo ($userResult['periodid']);?> <span style="color:#FFD700;">Wait</span>
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
        <?php $x=$userResult['amount']*2/100;?>
        <div class="point2" style="color:#FFD700;"><?php echo number_format($userResult['amount']-$x,2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Fee</div>
        <div class="point2"><?php echo number_format($x,2);?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Select</div>
        <div class="point2" style="color:#1DCC70;"><?php echo $userResult['value'];?></div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Status</div>
        <div class="point2" style="color:#FFD700;">Wait</div>
        </div>
        <div class="mt-1" style="display: flex;">
        <div class="point2">Create Time</div>
        <div class="point2"><?php echo $convert1;?></div>
        </div>
                </div>
            </td>
        </tr>
        <?php }?>
    
    </tbody>
</table>
        </div>
        
	
<?php }?>