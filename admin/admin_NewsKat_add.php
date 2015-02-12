<?php
$ret = array();
$ret['filename'] = '../admin/admin_NewsKat_add.tpl';
$ret['data'] = array();
if ('POST' != $_SERVER['REQUEST_METHOD']) {
    return $ret;
}
if (!isset($_POST['formaction'], $_POST['Name'])) {
    return INVALID_FORM;
}
if ('' == $Name = trim($_POST['Name'])) {
    return EMPTY_FORM;
}
$sql = 'SELECT
            ID
        FROM
            News_Kategorie
        WHERE
            Name = ?';
if (!$stmt = $db->prepare($sql)) {
    return $db->error;
}
$stmt->bind_param('s', $Name);
if (!$stmt->execute()) {
    return $stmt->error;
}
if ($stmt->fetch()) {
    return 'Es ist bereits eine Kategorie mit diesen Namen vorhanden.';
}
$stmt->close();
$sql = 'INSERT INTO
            News_Kategorie(Name)
        VALUES
            (?)';
if (!$stmt = $db->prepare($sql)) {
    return $db->error;
}
$stmt->bind_param('s', $Name);
if (!$stmt->execute()) {
    return $stmt->error;
}
$stmt->close();
return showInfo('Die Kategorie wurde hinzugefügt.');
?>