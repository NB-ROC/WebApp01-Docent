<html>
<head>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<?php include('header.php'); ?>

<h1>Registreer hier een gebruiker!</h1>
<form action="register.php" method="POST">
    <input type="text" name="gebruikersnaam" placeholder="Vul hier je gebruikersnaam in" >
    <input type="password" name="wachtwoord" placeholder="Vul hier je wachtwoord in" >
    <input type="submit" value="registreer">
</form>

<h1>Inloggen!</h1>
<form action="login.php" method="POST">
    <input type="text" name="gebruikersnaam" placeholder="Vul hier je gebruikersnaam in" >
    <input type="password" name="wachtwoord" placeholder="Vul hier je wachtwoord in" >
    <input type="submit" value="inloggen">
</form>

<h1>Rekenen</h1>
<form action="Rekenmachine.php" method="GET">
    <input type="number" name="cijfer1">

    <select name="berekenveld" >
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="/">/</option>
        <option value="*">*</option>
    </select>

    <input type="number" name="cijfer2">

    <input type="submit" value="bereken">
</form>

<?php include('footer.php'); ?>

</body>
</html>

