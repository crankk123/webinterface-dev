<?php
$ret = array();
$ret['filename'] = '../admin/admin_NewsKat_edit_select.tpl';
$ret['data'] = array();
if ('POST' != $_SERVER['REQUEST_METHOD']) {
    $sql = 'SELECT
                ID,
                Name
            FROM
                News_Kategorie
            ORDER BY
                Name ASC';
    if (!$result = $db->query($sql)) {
        return $db->error;
    }
    $Kategorien = array();
    while ($row = $result->fetch_assoc()) {
        $Kategorien[$row['ID']] = $row['Name'];
    }
    $ret['data']['Kategorien'] = $Kategorien;
    $result->close();
    return $ret;
}
?>