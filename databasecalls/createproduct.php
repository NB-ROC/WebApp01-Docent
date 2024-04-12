<?php

include('../Connection.php');

$sql = "INSERT INTO producten(productnaam, omschrijving, prijs, img) VALUES (:productnaam,:omschrijving,:prijs,:img)";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':productnaam', $_POST['productnaam']);
$stmt->bindParam(':omschrijving', $_POST['omschrijving']);
$stmt->bindParam(':prijs', $_POST['prijs']);
$stmt->bindParam(':img', $_POST['img']);
$stmt->execute();
