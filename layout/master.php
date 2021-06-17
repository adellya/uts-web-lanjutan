<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Sistem Informasi Akademik">
<meta name="author" content="Adellya Winarni">
<meta name="keywords" content="sistem, informasi, akademik">
<title>Welcome &mdash; Adellya News</title>
<link rel="stylesheet" href="<?php echo asset; ?>css/style.css">
</head>
<body>
<div class="container">
    <div class="header">
        <div class="brand">
            <img src="<?php echo asset; ?>images/logo.png" width="160" style="padding-left: 30px;">
        </div>
        <div class="menu-bar">
            <div style="width: 728px; height: 90px; margin-top: 15px; margin-bottom: 15px; margin-right: 15px;">
                <img src="<?php echo asset; ?>images/banner_728_90.jpg">
            </div>
            <div class="topnav">
                <div class="topnav-right">
                    <a href="#">Beranda</a>
                    <a href="#">Nasional</a>
                    <a href="#">Investasi</a>
                    <a href="#">Gaya Hidup</a>
                    <a href="#">Teknologi</a>
                    <a href="#">Politik</a>
                    <a href="#">Infografis</a>
                </div>
            </div>
        </div>
    </div>

    <section class="content">
        <?php
        if (isset($_GET['page'])) {
            include $_GET['page'] . ".php";
        } else {
            include "welcome.php";
        }
        ?>
    </section>
    
    <footer>
        <div class="policy">&copy; 2020 Adellya News &middot; Powered by Adellya Winarni &middot; All right reserved copyright.</div>
    </footer>
</div>
</body>
</html>
