<?php
/**
 * Prüft ob der angemeldete Benutzer das angegeben Recht hat.
 *
 * Mit dieser Funktion kann überprüft werden ob der angemeldete Benutzer
 * das angegebene Recht besitzt. Wenn die Parameter ungültig sind oder
 * ein MySQL-Fehler auftrat wird das PHP-Skript mit einer Fehlermeldung
 * beendet.
 *
 * @param db Das MySQLi-Objekt zur Datenbank
 * @param right Der Name vom zu prüfenden Recht
 * @return True wenn der angemeldete Benutzer das Recht hat, sonst false
 */
function hasRight($db, $right) {
    if (!($db instanceof MySQLi)) {
        die('Erster Parameter muss ein MySQLi-Objekt sein.');
    }
    if (!is_string($right)) {
        die('Zweiter Parameter muss ein String sein.');
    }
    if (!$UserID = getUserID($db)) {
        return false;
    }
    $sql = 'SELECT
                Adminrechte.UserID
            FROM
                Adminrechte
            JOIN
                Rechteliste
            ON
                Adminrechte.RechtID = Rechteliste.ID
            WHERE
                Adminrechte.UserID = ? AND
                Rechteliste.Name = ?';
    if (!$stmt = $db->prepare($sql)) {
        // wir lassen das skript beenden, nicht so wie in der getUserID-Funktion
        die ('MySQL-Fehler: '.$db->error);
    }
    $stmt->bind_param('is', $UserID, $right);
    if (!$stmt->execute()) {
        die ('MySQL-Statement-Fehler: '.$stmt->error); // s.o.
    }
    $stmt->bind_result($UserID); // interessiert eh keinen
    $ret = $stmt->fetch(); // ist true wenn ein Datensatz vorhanden ist oder
                           // NULL wenn nicht (und false wenn ein fehler auftrat)
    $stmt->close();
    return (bool)$ret;
}
<?php
/**
 * Prüft ob der angemeldete Benutzer mindestens ein Recht besitzt.
 *
 * Mit dieser Funktion kann überprüft werden ob der angemeldete
 * Benutzer mindestens ein Recht besitzt. Wenn der Parameter 
 * ungültig ist oder ein MySQL-Fehler auftrat wird das
 * PHP-Skript mit einer Fehlermeldung beendet.
 *
 * @param db Das MySQLi-Objekt
 * @return True wenn der angemeldete Benutzer mindestens ein Recht besitzt, sonst false.
 */
function gotSomeRights($db) {
    if (!($db instanceof MySQLi)) {
        die('Erster Parameter muss ein MySQLi-Objekt sein');
    }
    if (!$UserID = getUserID($db)) {
        return false;
    }
    $sql = 'SELECT
                UserID
            FROM
                Adminrechte
            WHERE
                UserID = ?';
    if (!$stmt = $db->prepare($sql)) {
        die('MySQL-Fehler: '.$db->error);
    }
    $stmt->bind_param('i', $UserID);
    if (!$stmt->execute()) {
        die('MySQL-Statement-Fehler: '.$db->error);
    }
    $stmt->bind_result($UserID);
    $ret = $stmt->fetch();
    $stmt->close();
    return (bool)$ret;
}
?>