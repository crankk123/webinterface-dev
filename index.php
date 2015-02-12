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
	require_once(dirname(__FILE__)."/config/su.inc.php");

	$SimpleUsers = new SimpleUsers();

	// Login from post data
	if( isset($_POST["username"]) )
	{

		// Attempt to login the user - if credentials are valid, it returns the users id, otherwise (bool)false.
		$res = $SimpleUsers->loginUser($_POST["username"], $_POST["password"]);
		if(!$res)
			$error = "You supplied the wrong credentials.";
		else
		{
				header("Location: admin/index.php");
				exit;
		}

	} // Validation end

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js</script>
    <script src="js/bootstrap.min.js"></script>

