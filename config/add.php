<html>
<body>
<?php
include('config.php');
if(isset($_POST['submit']))
{
$benutzer=mysql_real_escape_string($_POST['benutzer']);
$email=mysql_real_escape_string($_POST['email']);
$query1=mysql_query("insert into userdaten values('','$benutzer','$email')");
echo "insert into userdaten values('','$benutzer','$email')";
if($query1)
{
header("location:list.php");
}
}
?>
<fieldset style="width:300px;">
<form method="post" action="">
Name: <input type="text" name="benutzer"><br>
email: <input type="text" name="email"><br>
<br>
<input type="submit" name="submit">
</form>
</fieldset>
</body>
</html>