<?php
/* Daten:
 *   Kategorien - Ein Array mit allen bereits vorhandenen Kategorien. Bei einem Arrayelement
 *                ist der Schl�ssel die ID und der Wert der Name der Kategorie.
 */
?><form action="index.php?section=admin&amp;cat=NewsKat&amp;action=edit" method="post">
    <fieldset>
        <legend>Kategorie w�hlen</legend>
        <label>Kategorie <select name="KatID">
            <option value="0">Bitte w�hlen</option>
            <?php foreach ($data['Kategorien'] as $key => $value) { ?>
            <option value="<?php echo $key; ?>"><?php echo htmlspecialchars($value); ?></option>
            <?php } ?>
            </select></label>
        <input type="submit" name="formaction" value="Kategorie w�hlen">
    </fieldset>
</form>