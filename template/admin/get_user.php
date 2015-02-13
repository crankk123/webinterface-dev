<?php

include('config.php');

$result = mysql_query("SELECT * FROM userdaten")
or die(mysql_error());

$anzahl = mysql_num_rows($result);
echo $anzahl;

