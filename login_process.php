<?php

require_once 'inc/config.php';

$login = new App\Login();

if (isset($_POST['login'])) {
    $login->process();
    header("location: index.php?admin=dashboard");
}
