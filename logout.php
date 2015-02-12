<?php
session_start();
unset($_SESSION["id"]);
unset($_SESSION["benutzer"]);
header("Location:index.php");
?>