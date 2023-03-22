<!--change password js in screen idle-->

<div id="changepasword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" class="modal fade">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" data-dismiss="modal" aria-label="Close" class="close" onclick="window.location='';"> <span aria-hidden="true">&times;</span> </button>
        <h4 id="myModalLabel" class="modal-title">Change Password </h4>
        <ul class="parsley-errors-list filled" id="changeresponse"></ul>
      </div>
      <div class="modal-body">
        <form class="form-horizontal clearfix changepasswordd" action="#" data-parsley-validate="" novalidate="" id="changepassword" method="post">
          <div class="col-lg-12" >
            <ul class="parsley-errors-list filled" id="response">
            </ul>
            <label class="control-label" >Old Password</label>
            <input class="form-control" type="password" id="oldpassword" name="oldpassword" required>
            <label class="control-label" >New Password</label>
            <input class="form-control" type="password" id="newpassword" name="newpassword" required>
            <label class="control-label" >Confirm New Password</label>
            <input class="form-control" type="password" id="cpassword" name="cpassword" required>
            
    <input class="form-control" type="hidden" id="userid" name="userid" value="<?php echo $_SESSION['userid']; ?>">
            <br />
            
            <div class="form-group">
              <div class="col-lg-offset-2 col-lg-8 text-center">
                <button type="button" class="btn btn-default" onclick="window.location='';">Cancel</button>
                <button type="submit" class="mb-sm btn btn-primary">Submit</button>
              </div>
            </div>
          </div>
        </form>
      </div>
      <!--<div class="modal-footer">
        <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
      </div>-->
    </div>
  </div>
</div>

            
     <div style="display:none;">
          <button type="button" data-notify="" data-message="Password Change Successfully..." data-options="{&quot;status&quot;:&quot;info&quot;}" class="btn btn-info" id="psuccess"></button>
          
        </div>
