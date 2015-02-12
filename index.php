<?php
/*	
 *	Content File
 *	
 *	Every HTML Content should stored in $content var. 
 *	The " is not allowed but you can create chains.	
 *
 */
 require("template/index.tpl");

?>
<?php
session_start();
if (isset($_POST['user']) AND isset($_POST['pass'])){ 
	$benutzer = $_POST['user'];
	$passwort = $_POST['pass'];

	if($benutzer AND $passwort)
	{
	  //connect to db
		$connect = mysql_connect("localhost","root","alka");
		mysql_select_db("webinterface");

		$query = mysql_query("SELECT * FROM userdaten WHERE benutzer='$benutzer'");
		$num = mysql_num_rows($query);

		if($num>0)
		{
			WHILE ($row = mysql_fetch_assoc($query))
			{
				$dbbenutzer = $row['benutzer'];
				$dbpasswort = $row['passwort'];		  
			}
			if ($dbbenutzer==$benutzer AND $dbpasswort==$passwort)
			{
				$_SESSION['loggedin'] = true; 
				header("Location:kundenbereich.php"); 

			}
			else
				echo "Ihre Daten wurden nicht gefunden!";
		}
		else
			echo "Der angegeben Benutzer existiert nicht!";
	}

	else
		echo "Bitte f&uuml;llen Sie alle Felder aus!";		
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

	<!-- Custom styles for this template -->
	<link href="css/login.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js</script>


