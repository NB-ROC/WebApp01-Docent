
<html>
<head>
    <link rel="stylesheet" href="assets/css/style.css" type="text/css" >
</head>
<body>

<?php //include('header.php') ?>



<?php
include('Connection.php');

$sql = "SELECT * FROM producten";
$stmt = $conn->prepare($sql);
$stmt->execute();
$result = $stmt->fetchAll();

foreach ($result as $key => $value){
    echo '<form action="databasecalls\updateproduct.php" method="post">';
    foreach ($value as $key1 => $value2){
        if ($key1 == 'id'){
            echo '<label>id:</label>';
            echo '<input type="text" name="ind" value="'. $value2 .'"><br>';
        }
        elseif ($key1 == 'productnaam'){
            echo '<label>Productnaam:</label>';
            echo '<input readonly type="text" name="productnaam" value="'. $value2 .'"><br>';
        }
        elseif ($key1 == 'omschrijving'){
            echo '<label>omschrijving:</label>';
            echo '<input type="text" name="omschrijving" value="'. $value2 .'"><br>';
        }

    }
    echo '<input type="submit" >';
    echo '</form>';
}
?>
<?php //include('footer.php') ?>

</body>

</html>
