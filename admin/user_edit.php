<?php
function valid($id, $benutzer, $passwort,$email, $error)
{
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>Edit Records</title>
</head>
<body>
<?php

if ($error != '')
{
echo '<div style="padding:4px; border:1px solid red; color:red;">'.$error.'</div>';
}
?>

<form action="" method="post">
<input type="hidden" name="id" value="<?php echo $id; ?>"/>

<table border="1">
<tr>
<td colspan="2"><b><font color='Red'>Edit Records </font></b></td>
</tr>
<tr>
<td width="179"><b><font color='#663300'>Benutzername<em>*</em></font></b></td>
<td><label>
<input type="text" name="benutzer" value="<?php echo $benutzer; ?>" />
</label></td>
</tr>

<tr>
<td width="179"><b><font color='#663300'>Passwort<em>*</em></font></b></td>
<td><label>
<input type="text" name="passwort" value="<?php echo $passwort; ?>" />
</label></td>
</tr>

<tr>
<td width="179"><b><font color='#663300'>E-mail<em>*</em></font></b></td>
<td><label>
<input type="text" name="email" value="<?php echo $email; ?>" />
</label></td>
</tr>

<tr align="Right">
<td colspan="2"><label>
<input type="submit" name="submit" value="Edit Records">
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

if (is_numeric($_POST['id']))
{

$id = $_POST['id'];
$benutzer = mysql_real_escape_string(htmlspecialchars($_POST['benutzer']));
$passwort = mysql_real_escape_string(htmlspecialchars($_POST['passwort']));
$email = mysql_real_escape_string(htmlspecialchars($_POST['email']));


if ($benutzer == '' || $passwort == '' || $email == '')
{

$error = 'ERROR: Please fill in all required fields!';


valid($id, $benutzer, $passwort,$email, $error);
}
else
{

mysql_query("UPDATE userdaten SET benutzer='$benutzer', passwort='$passwort' ,email='$email' WHERE id='$id'")
or die(mysql_error());

header("Location: user.php");
}
}
else
{

echo 'Error!';
}
}
else

{

if (isset($_GET['id']) && is_numeric($_GET['id']) && $_GET['id'] > 0)
{

$id = $_GET['id'];
$result = mysql_query("SELECT * FROM userdaten WHERE id=$id")
or die(mysql_error());
$row = mysql_fetch_array($result);

if($row)
{

$benutzer = $row['benutzer'];
$passwort = $row['passwort'];
$email = $row['email'];

valid($id, $benutzer, $passwort,$email,'');
}
else
{
echo "No results!";
}
}
else

{
echo 'Error!';
}
}
?>