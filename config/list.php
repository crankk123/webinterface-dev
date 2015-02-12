<html>
<body>
<?php
include('config.php');
$query1=mysql_query("select id, benutzer, email from userdaten");
echo "<table><tr><td>Name</td><td>Age</td><td></td><td></td>";
while($query2=mysql_fetch_array($query1))
{
echo "<tr><td>".$query2['benutzer']."</td>";
echo "<td>".$query2['email']."</td>";
echo "<td><a href='edit.php?id=".$query2['id']."'>Edit</a></td>";
echo "<td><a href='delete.php?id=".$query2['id']."'>x</a></td><tr>";
}
?>
</ol>
</table>
</body>
</html>