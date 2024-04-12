<?php
include 'Connection.php';
$stmt = $conn->prepare(
    "SELECT * FROM users WHERE gebruikersnaam = :gebruikersnaam AND wachtwoord = :password");

$stmt->bindParam(':gebruikersnaam', $_POST['gebruikersnaam']);
$stmt->bindParam(':password' , $_POST['wachtwoord']);
$result = $stmt->execute();

$data = $stmt->fetch();
var_dump($data);
var_dump($result);
if(isset($result)){
 session_start();
    $_SESSION['user'] = $data['gebruikersnaam'];
     $_SESSION['rol'] = $data['rol'];
}
else{
    echo 'niet';
}


