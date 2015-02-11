<?php
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

?>
<!DOCTYPE html>
 <head>
  <title>Login</title>
  <link href="" rel="stylesheet" media="screen">
  <link href="css/login.css" rel="stylesheet" type="text/css">
 </head>
 <body>
  <div id="loginform">
  <h1>Admin Login</h1>
  <form action="login.php" method="post">   
    <p>Kundennummer: <input type="text" name="user"></p>
    <p>Kundenpasswort: <input type="password" name="pass"></p>
   <input type="submit" value="Anmelden"> <input type="reset" name="reset" value="Reset"> <a href = 'register.php'><b>Registration?</b></a>
  <a class="button" href="">Passwort vergessen?</a>
  </form>
   </div>
   <div id="footer">&raquo; <a href="http://teampenner.de">Homepage</a> | Admin Panel</div>
		</div>
 </body>
</html>