<?php
require_once 'inc/config.php';

$cat = new App\Category();

if (isset($_POST['create_submit'])) {
    $cat->store();
    header("location: index.php?page=category");
}
?>
