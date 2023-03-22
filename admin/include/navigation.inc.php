<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    
    <!--<div class="user-panel">
      <div class="pull-left image"> <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> </div>
      <div class="pull-left info">
        <p>Welcome</p>
        <a href="javascript:void('0');"> <i class="fa fa-circle text-success"></i> Online</a> </div>
    </div>-->
    <!-- search form --> 
    
    <!-- /.search form --> 
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
      <li class="header">MAIN NAVIGATION</li>
      <?php $session_role=$_SESSION['role_id'];
$url = basename($_SERVER['PHP_SELF']) . '';
$chkurl=mysqli_query($con,"select `id`,`p_id` from `child_menu` where `url`='".$url."' and `status`='1'");
$chkurl_result=mysqli_fetch_array($chkurl);
$chk= $chkurl_result['p_id'];
$chkid= $chkurl_result['id'];
$valurl=mysqli_query($con,"SELECT * FROM `task` where `role_id`='".$session_role."' And task  like '%$chk%' and `status`='1'");
$val_row=mysqli_num_rows($valurl);
if($val_row=='0'){
session_start();
session_unset();
session_destroy();

header("location:index.php?msg1=notauthorized");

	
	}else{

$task=mysqli_query($con,"select * from `task` where `role_id`='".$session_role."' and `status`='1'");
$task_result=mysqli_fetch_array($task);
$taskid=$task_result['task'];	
$parent=mysqli_query($con,"Select * from `services` where id in($taskid) And `status`='1'");
	while(@$parent_array=mysqli_fetch_array($parent)){
		if($parent_array['url']=='desktop.php'){
		?>
      <li class="active treeview"> <a href="<?php echo $parent_array['url']; ?>"> <i class="fa fa-dashboard"></i> <span><?php echo $parent_array['services']; ?></span> </a></li>
      <?php }else{?>
      <li class="treeview"> <a href="<?php echo $parent_array['url']; ?>"> <i class="fa fa-list-alt"></i><span><?php echo $parent_array['services']; ?></span><i class="fa fa-angle-left pull-right"></i></a>
        <ul class="treeview-menu">
          <?php 
$child=mysqli_query($con,"Select * from `child_menu` where `p_id`='".$parent_array['id']."' And `status`='1'");
	while($child_array=mysqli_fetch_array($child)){ ?>
          <li> <a href="<?php echo $child_array['url']; ?>"><i class="fa fa-circle-o"></i><?php echo $child_array['child']; ?></a></li>
          <?php } //child while end?>
        </ul>
      </li>
      <?php } //parent while end 
	 
	 }}
	 ?>
    <li>&nbsp;</li>
     <li>&nbsp;</li>  
    </ul>
    
    
  </section><br />
  <!-- /.sidebar -->
</aside>