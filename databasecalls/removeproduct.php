<?php
include ('../Connection.php');
var_dump($_POST['id']);

$sql = 'DELETE FROM producten WHERE id = :id';
$statement = $conn->prepare($sql);
$statement->bindParam(':id',$_POST['id']);
$statement->execute();



$sql = "UPDATE products SET description=:omschrijving WHERE id =:id;";
$statement = $conn->prepare($sql);
$statement->bindParam(':omschrijving',$_POST['omschrijving']);
$statement->bindParam(':id',$_POST['id']);
$statement->execute();