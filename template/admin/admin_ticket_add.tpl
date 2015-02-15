<html>
<head>
    <!-- start: CSS -->
	<link id="bootstrap-style" href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="css/login.css" rel="stylesheet">
	<link href="../css/news.css" rel="stylesheet">
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
</head>
<body>
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
								<i class="halflings-icon white user"></i> Hallo, 
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								<li><a href="user.html"><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href="../logout.php"><i class="halflings-icon off"></i> Abmelden</a></li>
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
						<li><a href="../user/index.php"><i class="icon-home"></i><span class="hidden-tablet">User Dashboard</span></a></li>	

						<li>
							<a class="dropmenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet"> Support</span></a>
							<ul>
								<li><a class="submenu" href="ticket.php"><i class="icon-th-list"></i><span class="hidden-tablet"> &Uuml;bersicht</span></a></li>
								<li><a class="submenu" href="admin_ticket_add.php"><i class="icon-th-list"></i><span class="hidden-tablet"> Ticket eröffnen</span></a></li>
								<li><a class="submenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet">#</span></a></li>
							</ul>	
						</li>
						<li>
							<a class="dropmenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet"> News</span></a>
							<ul>
								<li><a class="submenu" href="admin_news.php"><i class="icon-th-list"></i><span class="hidden-tablet"> &Uuml;bersicht</span></a></li>
								<li><a class="submenu" href="admin_news_add.php"><i class="icon-th-list"></i><span class="hidden-tablet"> News erstellen</span></a></li>
							
							</ul>	
						</li>
                        <li>
							<a class="dropmenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet"> Server</span></a>
							<ul>
								<li><a class="submenu" href="server.php"><i class="icon-th-list"></i><span class="hidden-tablet"> &Uuml;bersicht</span></a></li>
								<li><a class="submenu" href="server_add.php"><i class="icon-th-list"></i><span class="hidden-tablet"> Neuen Server</span></a></li>
								
							</ul>	
						</li>
						
						<li>
                            <a class="dropmenu" href="#"><i class="icon-user"></i><span class="hidden-tablet"> Benutzer</span></a>
							<ul>
								<li><a class="submenu" href="user.php"><i class="icon-file-alt"></i><span class="hidden-tablet"> &Uuml;bersicht</span></a></li>
								<li><a class="submenu" href="server.php"><i class="icon-file-alt"></i><span class="hidden-tablet"> Gruppen</span></a></li>
							</ul>	
						</li>
                        <li>
							<a class="dropmenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet">Einstellungen</span></a>
							<ul>
								<li><a class="submenu" href="settings.php"><i class="icon-th-list"></i><span class="hidden-tablet"> Seiten Einstellungen</span></a></li>
								<li><a class="submenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet"> &Uuml;bersicht</span></a></li>
								
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
				<li><a href="#">Dashboard</a></li>
			</ul>

			<div class="row-fluid">
				
	<?php
if (isset($_POST['submitted'])) {
include ('mysql_connect.php');
if (empty($_POST['title'])) {
echo '<p><font color="red">You need to enter a title.</font></p>';
} else {
$title = $_POST['title'];
}

if (empty($_POST['name'])) {
echo '<p><font color="red">You need to enter a name.</font></p>';
} else {
$name = $_POST['name'];
}

if (empty($_POST['message'])) {
echo '<p><font color="red">You need to enter a message.</font></p>';
} else {
$message = $_POST['message'];
}

if ($title && $name && $message) {
$query = "INSERT INTO ticket (title, author, post, date) VALUES ('$title', '$name', '$message', NOW())";
$result = @mysql_query($query);

if ($result) {
echo '<p><font color="red">Ticket eröffnet!</font></p>';
} else {
echo '<font color="red"><p>News could not be added! Please try again.</p></font>';
}
} else {
echo '<p><font color="red">Please fill in the appropriate information</font></p>';
}
}
?>

<!-- Start Formoid form-->
<link rel="stylesheet" href="ticket_files/formoid1/formoid-solid-blue.css" type="text/css" />
<script type="text/javascript" src="ticket_files/formoid1/jquery.min.js"></script>
<form action="<?php $_SERVER['PHP_SELF']; ?>" class="formoid-solid-blue" style="background-color:#FFFFFF;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:480px;min-width:150px" method="post"><div class="title"><h2>Ticket eröffnen</h2></div>
	<div class="element-input"><label class="title"></label><div class="item-cont"><input class="large" type="text" value="<?php if(isset($_POST['title'])) echo $_POST['title']; ?>" name="title" placeholder="Title"/><span class=""></span></div></div>
	<div class="element-input"><label class="title"></label><div class="item-cont"><input class="large" type="text" value="<?php if(isset($_POST['name'])) echo $_POST['name']; ?>" name="name" placeholder="Kategorie"/><span class=""></span></div></div>
	<div class="element-textarea"><label class="title"></label><div class="item-cont"><textarea class="medium" name="message"  cols="20" rows="5" placeholder="Nachricht"><?php if(isset($_POST['message'])) echo $_POST['message']; ?></textarea><span class=""></span></div></div>
	<div class="submit"><input type="submit" value="Ticket eröffnen"/></div>
</form>
<script type="text/javascript" src="ticket_files/formoid1/formoid-solid-blue.js"></script>
<!-- Stop Formoid form-->

			
					
						
			
				
				
			
			
				
				
				<div class="clearfix"></div>
								
			
			
       

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
</body>
</html>
	

	


