<?php
/* Daten:
 *    KatID - Die ID von der Kategorie
 *    Name - Der Name der Kategorie
 */
?><form action="index.php?section=admin&amp;cat=NewsKat&amp;action=edit" method="post">
    <fieldset>
        <legend>Kategorie bearbeiten</legend>
        <label>Name: <input type="text" name="Name" value="<?php echo htmlspecialchars($data['Name']); ?>" /></label>
        <input type="submit" name="formaction" value="Kategorie speichern" />
        <input type="hidden" name="KatID" value="<?php echo $data['KatID']; ?>" />
    </fieldset>
</form>