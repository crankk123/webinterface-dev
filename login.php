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
				header("Location:admin/index.php"); 

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