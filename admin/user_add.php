
<?php
require_once('../includes/auth.php');
function valid($benutzer, $passwort,$email, $error)
{
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>Insert Records</title>
</head>
<body>
<?php

if ($error != '')
{
echo '<div style="padding:4px; border:1px solid red; color:red;">'.$error.'</div>';
}
?>

<form action="" method="post">
<table border="1">
<tr>
<td colspan="2"><b><font color='Red'>Insert Records </font></b></td>
</tr>
<tr>
<td width="179"><b><font color='#663300'>Benutzername<em>*</em></font></b></td>
<td><label>
<input type="text" name="benutzer" value="<?php echo $benutzer; ?>" />
</label></td>
</tr>

<tr>
<td width="179"><b><font color='#663300'>Password<em>*</em></font></b></td>
<td><label>
<input type="pass" name="passwort" value="<?php echo $passwort; ?>" />
</label></td>
</tr>

<tr>
<td width="179"><b><font color='#663300'>E-Mail<em>*</em></font></b></td>
<td><label>
<input type="text" name="email" value="<?php echo $email; ?>" />
</label></td>
</tr>

<tr align="Right">
<td colspan="2"><label>
<input type="submit" name="submit" value="Insert Records">
</label></td>
</tr>
</table>
</form>
</body>
</html>
<?php
}

include('config.php');

if (isset($_POST['submit']))
{

$benutzer = mysql_real_escape_string(htmlspecialchars($_POST['benutzer']));
$passwort = mysql_real_escape_string(htmlspecialchars($_POST['passwort']));
$email = mysql_real_escape_string(htmlspecialchars($_POST['email']));

if ($benutzer == '' || $passwort == '' || $email == '')
{

$error = 'Please enter the details!';

valid($benutzer, $passwort, $email,$error);
}
else
{

mysql_query("INSERT userdaten SET benutzer='$benutzer', passwort='$passwort', email='$email'")
or die(mysql_error());

header("Location: user.php");
}
}
else
{
valid('','','','');
}
?>