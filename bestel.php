<?php include('Connection.php'); ?>
<html>
<head>
<link rel="stylesheet" href="assets/css/style.css" type="text/css" >
</head>
<body>

<?php //include('header.php') ?>


<?php
$sql = "SELECT * FROM producten";
$stmt = $conn->prepare($sql);
$stmt->execute();
$result = $stmt->fetchAll();
?>
<section class="gerechten">
<?php
foreach ($result as $key => $value){
    echo '<div style="background-color: red; " class="productalgemeen product'. $key .'">';
    echo '<form action="databasecalls/removeproduct.php"  method="POST">';
    foreach ($value as $key1 => $value2){

        if ($key1 == 'id'){
            echo '<input type="text" name="id" value="'. $value2 . '" readonly>';
        }
    }
    echo '<input type="submit" value="remove">';
    echo '</form>';
    echo '</div>';
}


?>

</section>

<?php //include('footer.php') ?>

</body>

</html>


