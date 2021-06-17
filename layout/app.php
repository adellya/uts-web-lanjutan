<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Sistem Informasi Akademik">
<meta name="author" content="Adellya Winarni">
<meta name="keywords" content="sistem, informasi, akademik">
<title>Dashboard</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link rel="stylesheet" href="<?php echo asset; ?>css/app.css">
</head>
<body>
<!-- <div class="navbar">
<ul>
  <li style="float:right"><a class="active" href="#about">About</a></li>
</ul>
</div> -->
<div class="sidebar">
    <a href="index.php?page=dashboard">Home</a>
    <a href="index.php?page=post">Post</a>
    <a href="index.php?page=category">Category</a>
    <a href="logout.php">Log out</a>
</div>
<div class="main">
    <?php
    if (isset($_GET['page'])) {
        include $_GET['page'] . ".php";
    } else {
        include "dashboard.php";
    }
    ?>
</div>
</body>
</html>
