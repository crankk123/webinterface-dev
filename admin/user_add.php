<!--<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <link href="../css/admin/register.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <div id="register">
            <form action='register.php' method='post'>
                <p>Benutzername: <input type="text" name="user"></p>
                <p>Passwort: <input type="text" name="pass"></p>
                <p>Passwort wiederholen: <input type="text" name="pass_w"></p>
                <p>E-Mail: <input type="text" name="email"></p>
                <input type="submit" value='Register' name="register"> <input type="reset" value="Reset" name="reset">
                <a href="login.php">Einloggen</a>
            </form>
        </div>
    </body>
</html>-->
<link href="../css/register.css" rel="stylesheet" media="screen">
<?php
require("../template/admin/admin_user_add.tpl");
require("../include.php");
    if (isset($_POST['user']) AND isset($_POST['pass']) AND isset($_POST['pass_w']) AND isset($_POST['email'])) {
        $benutzer = $_POST['user'];
        $passwort = $_POST['pass'];
        $passwortw = $_POST['pass_w'];
        $email = $_POST['email'];

        if ($benutzer AND $passwort AND $passwortw AND $email) {
            if ($passwort == $passwortw) {
                //connect to db
                $connect = mysql_connect("127.0.0.1", "root", "alka");
                mysql_select_db("webinterface");
                $sql = mysql_query("SELECT * FROM userdaten");
                $row = mysql_fetch_row($sql);

                if ($row['benutzer'] != $benutzer) {
                    $query = mysql_query("INSERT INTO userdaten (benutzer, passwort, email) VALUES('$benutzer', '$passwort', '$email')", $connect);
                }

                if ($query == true) {
                    echo "Sie haben sich Registriert";
                } else {
                    echo "Der Benutzername ist schon vorhanden!";
                }
            } else {
                echo "Passwörter stimmen nicht überein!";
            }
        } else {
            echo "Sie müssen alle felder ausfüllen";
        }
    }
?>