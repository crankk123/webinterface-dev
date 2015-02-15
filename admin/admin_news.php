<?php
	require_once('../includes/auth.php');
	include ('../includes/mysql_connect.php');
	if($_SESSION['GROUP'] == "admin"){
		// ADMIN USER
	 	require("../template/admin/admin_news.tpl");
	}else{
		// KEIN ADMIN VERPISS DICH!
		header("location: access-denied.php");
	}


