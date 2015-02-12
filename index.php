<?php
/*	
 *	Content File
 *	
 *	Every HTML Content should stored in $content var. 
 *	The " is not allowed but you can create chains.	
 *
 */
 require("template/index.tpl");
session_start();
$message="";
if(count($_POST)>0) {
$conn = mysql_connect("localhost","root","alka");
mysql_select_db("webinterface",$conn);
$result = mysql_query("SELECT * FROM userdaten WHERE benutzer='" . $_POST["benutzer"] . "' and passwort = '". $_POST["passwort"]."'");
$row  = mysql_fetch_array($result);
if(is_array($row)) {
$_SESSION["id"] = $row[id];
$_SESSION["benutzer"] = $row[benutzer];
} else {
$message = "Invalid Username or Password!";
}
}
if(isset($_SESSION["id"])) {
header("Location:admin/index.php");
}
?>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Webinterface</title>
	<!-- Bootstrap core CSS -->
	<link href="css/bootstrap.min.index.css" rel="stylesheet">
	<!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">

