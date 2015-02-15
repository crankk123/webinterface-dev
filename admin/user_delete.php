<?php
require_once('../includes/auth.php');
include('config.php');

if (isset($_GET['id']) && is_numeric($_GET['id']))
{
$id = $_GET['id'];

$result = mysql_query("DELETE FROM userdaten WHERE id=$id")
or die(mysql_error());

header("Location: user.php");
}
else

{
header("Location: user.php");
}
?>
