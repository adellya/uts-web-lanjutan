<?php
require_once 'inc/config.php';
$post = new App\Post();

if (isset($_POST['submit'])) {
    $post->store();
    header("location: index.php?page=post");
}
?>
