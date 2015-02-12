<form action="index.php?section=register" method="post">
    <fieldset>
        <legend>Registieren</legend>
        <label>Username: <input type="text" name="Username" /></label>
        <label>Password: <input type="password" name="Password[]" /></label>
        <label>Bestätigung: <input type="password" name="Password[]" /></label>
        <label>Email: <input type="text" name="Email" /></label>
        <label>{FRAGE}: <input type="text" name="Antwort" /></label>
        <input type="submit" name="formaction" value="Registieren" />
    </fieldset>
</form>