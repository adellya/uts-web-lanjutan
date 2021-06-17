<?php

namespace App;

class Login extends Koneksi
{

    public function __construct()
    {
        parent::__construct();
    }

    public function process()
    {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = "SELECT * FROM users WHERE username=:username AND password=:password";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(":username", $username);
        $stmt->bindParam(":password", $password);
        $stmt->execute();

        $row = $stmt->fetch();

        if (!empty($row)) {
            $_SESSION['username'] = $row['username'];
        } else {
            $_SESSION['error'] = "Autentikasi gagal!";
        }

    }

}
