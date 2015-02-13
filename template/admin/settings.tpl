<!-- start: CSS -->
	<link id="bootstrap-style" href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="../css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="../css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	<!-- start: JavaScript-->
	<!-- start: JavaScript-->

		<script src="../js/jquery-1.9.1.min.js"></script>
		<script src="../js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="../js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="../js/jquery.ui.touch-punch.js"></script>
	
		<script src="../js/modernizr.js"></script>
	
		<script src="../js/bootstrap.min.js"></script>
	
		<script src="../js/jquery.cookie.js"></script>
	
		<script src='../js/fullcalendar.min.js'></script>
	
		<script src='../js/jquery.dataTables.min.js'></script>

		<script src="../js/excanvas.js"></script>
		<script src="../js/jquery.flot.js"></script>
		<script src="../js/jquery.flot.pie.js"></script>
		<script src="../js/jquery.flot.stack.js"></script>
		<script src="../js/jquery.flot.resize.min.js"></script>
	
		<script src="../js/jquery.chosen.min.js"></script>
	
		<script src="../js/jquery.uniform.min.js"></script>
		
		<script src="../js/jquery.cleditor.min.js"></script>
	
		<script src="../js/jquery.noty.js"></script>
	
		<script src="../js/jquery.elfinder.min.js"></script>
	
		<script src="../js/jquery.raty.min.js"></script>
	
		<script src="../js/jquery.iphone.toggle.js"></script>
	
		<script src="../js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="../js/jquery.gritter.min.js"></script>
	
		<script src="../js/jquery.imagesloaded.js"></script>
	
		<script src="../js/jquery.masonry.min.js"></script>
	
		<script src="../js/jquery.knob.modified.js"></script>
	
		<script src="../js/jquery.sparkline.min.js"></script>
	
		<script src="../js/counter.js"></script>
	
		<script src="../js/retina.js"></script>

		<script src="../js/custom.js"></script>
	<!-- end: JavaScript-->
<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="index.php"><span>Admin Panel</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white warning-sign"></i>
							</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title">
 									<span>You have 11 notifications</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>	
                            	<li>
                                    <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">ToDo</span>
										<span class="time">1 min ToDo</span> 
                                    </a>
                                </li>
								
                                <li class="dropdown-menu-sub-footer">
                            		<a>View all notifications ToDo</a>
								</li>	
							</ul>
						</li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white tasks"></i>
							</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title">
 									<span>You have 17 tasks in progress ToDo</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim red">80</div> 
                                    </a>
                                </li>
                                
							</ul>
						</li>
						<!-- end: Notifications Dropdown -->
						<li>
							<a class="btn" href="#">
								<i class="halflings-icon white wrench"></i>
							</a>
						</li>
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> Dennis Ji
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								<li><a href="profile.php"><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href="../login.php"><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="index.php"><i class="icon-home"></i><span class="hidden-tablet"> Dashboard</span></a></li>	

						<li>
							<a class="dropmenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet"> Support</span></a>
							<ul>
								<li><a class="submenu" href="newticket.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Neues Ticket</span></a></li>
								<li><a class="submenu" href="ticket.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Übersicht</span></a></li>
								<li><a class="submenu" href="#"><i class="icon-file-alt"></i><span class="hidden-tablet">#</span></a></li>
							</ul>	
						</li>
                        <li>
							<a class="dropmenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet"> Server</span></a>
							<ul>
								<li><a class="submenu" href="server.php"><i class="icon-file-alt"></i><span class="hidden-tablet"> Übersicht</span></a></li>
								<li><a class="submenu" href="#"><i class="icon-file-alt"></i><span class="hidden-tablet"> Neuen Server</span></a></li>
								<li><a class="submenu" href="#"><i class="icon-file-alt"></i><span class="hidden-tablet"> #</span></a></li>
							</ul>	
						</li>
						
						<li><a href="user.html"><i class="icon-user"></i><span class="hidden-tablet"> User</span></a></li>
							
							<li>
							<a class="dropmenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet">Einstellungen</span></a>
							<ul>
								<li><a class="submenu" href="#"><i class="icon-file-alt"></i><span class="hidden-tablet"> Seiten Einstellungen</span></a></li>
								<li><a class="submenu" href="#"><i class="icon-file-alt"></i><span class="hidden-tablet"> Übersicht</span></a></li>
								<li><a class="submenu" href="#"><i class="icon-file-alt"></i><span class="hidden-tablet"> #</span></a></li>
							</ul>	
						</li>						
						
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Dashboard</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Seiten Einstellungen</a></li>
			</ul>

			<h1>Seiten Einstellungen</h1>
			<div class="form-group">
                    <label for="selectLanguage" class="col-sm-4 control-label">Site Language</label>
                    <div class="col-sm-8">
                        <select id="selectLanguage" name='language'></select>
                    </div>
                </div>
			<!--
<div class='row'>
<div id='regbox' class='col-lg-6'>
    <div class='panel panel-primary'>
        <div class='panel-heading'>
            <h3 class='panel-title'>Configuration</h3>
        </div>
        <div class='panel-body'>
            <form class='form-horizontal' role='form' name='adminConfiguration' action='../api/update_site_settings.php' method='post'>
                <div class="form-group">
                    <label for="inputWebsiteName" class="col-sm-4 control-label">Site Name</label>
                    <div class="col-sm-8">
                        <input type='text' id="inputWebsiteName" class="form-control" name='website_name'/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputWebsiteURL" class="col-sm-4 control-label">Admin Root URL</label>
                    <div class="col-sm-8">
                        <input type='text' id="inputWebsiteURL" class="form-control" name='website_url'/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-sm-4 control-label">Account Management Email</label>
                    <div class="col-sm-8">
                        <input type='text' id="inputEmail" class="form-control" name='email'/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userRegistration" class="col-sm-4 control-label">User Registration</label>
                    <div class="col-sm-8">
                        <input type="checkbox" id ="userRegistration" name='can_register' value='1'/>
                        <br><small>Specify whether users can create new accounts by themselves.</small>
                    </div>
                </div>
                <div class="form-group">
                    <label for="emailLogin" class="col-sm-4 control-label">Email Login</label>
                    <div class="col-sm-8">
                        <input type="checkbox" id ="checkEmailLogin" name='email_login' value='1'/>
                        <br><small>Specify whether users can login via email address or username instead of just username.</small>
                    </div>
                </div>
                <div class="form-group">
                    <label for="newUserTitle" class="col-sm-4 control-label">Default New User Title</label>
                    <div class="col-sm-8">
                        <input type='text' id="newUserTitle" class="form-control" name='new_user_title'/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="checkEmailActivation" class="col-sm-4 control-label">Email Activation</label>
                    <div class="col-sm-8">
                        <input type="checkbox" id ="checkEmailActivation" name='activation' value='1'/>
                        <br><small>Specify whether email activation is required for newly registered accounts.</small>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputThreshold" class="col-sm-4 control-label">Account Activation Threshold</label>
                    <div class="col-sm-8">
                        <input type='text' id="inputThreshold" class="form-control" name='resend_activation_threshold'/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputTimeoutToken" class="col-sm-4 control-label">Password Reset Token Timeout value (in hours Max: 27 Hours)</label>
                    <div class="col-sm-8">
                        <input type='text' id="inputTimeoutToken" class="form-control" name='token_timeout'/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="selectLanguage" class="col-sm-4 control-label">Site Language</label>
                    <div class="col-sm-8">
                        <select id="selectLanguage" name='language'></select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                        <button type="submit" class="btn btn-success submit" value='Update'>Update</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
	-->		
			<div class="row-fluid">	

				
				
				<div class="clearfix"></div>
								
			</div><!--/row-->
			
       

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>