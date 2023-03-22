  <header class="main-header">
    <!-- Logo -->
    <a href="desktop.php" class="logo">
      <span class="logo-mini"><b>Admin<!--<img src="images/smalllogo.png">--></b></span>
      <span class="logo-lg"><b>Adminsuit <!--<img src="images/logo.jpg">--></b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
         
          <!-- Tasks: style can be found in dropdown.less -->
          
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <span class="hidden-xs"><i class="fa fa-user"></i></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                                <p>
                <?php echo ucfirst($_SESSION['admin_name']);?>
                </p>
              </li>
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" data-toggle="modal" data-target="#changepasword" class="btn btn-default btn-flat">Change Password</a>
                </div>
                <div class="pull-right">
               <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          
        </ul>
      </div>
    </nav>
  </header>
