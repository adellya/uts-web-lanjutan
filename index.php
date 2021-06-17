<?php

require_once 'inc/config.php';

if (isset($_SESSION['username'])) {
    require_once 'layout/app.php';
} else {
    require_once 'layout/master.php';
}
