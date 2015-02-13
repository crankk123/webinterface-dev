<?php
	//Start session
	session_start();
	if($_SESSION['loggedin']){

 }else{
 	header("location:../index.php");
 }
?>
