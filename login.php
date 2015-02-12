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
<link id="bootstrap-style" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" rel="stylesheet">
<link id="bootstrap-style" href="css/login_.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<div class="container" style="margin-top:40px">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> Sign in to continue</strong>
					</div>
					<div class="panel-body">
						<form role="form" action="#" method="POST">
							<fieldset>
								<div class="row">
									<div class="center-block">
										<img class="profile-img"
											src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120" alt="">
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
												<input class="form-control" placeholder="Username" name="benutzer" type="text" autofocus>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
												<input class="form-control" placeholder="Password" name="passwort" type="password" value="">
											</div>
										</div>
										<div class="form-group">
											<input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
										</div>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="panel-footer ">
						Don't have an account! <a href="#" onClick=""> Sign Up Here </a>
					</div>
                </div>
			</div>
		</div>
	</div>