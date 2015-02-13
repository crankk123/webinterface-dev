<?php
/*	
 *	Content File
 *	
 *	Every HTML Content should stored in $content var. 
 *	The " is not allowed but you can create chains.	
 *
 */
 require("template/register.tpl");

?>
<?php
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