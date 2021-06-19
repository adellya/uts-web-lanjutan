<?php

namespace App;
use PDO;

class Koneksi
{

    protected object $db;

    function __construct()
    {
        try {
            $this->db = new PDO("mysql:host=localhost; port=8889; dbname=dbweb4", "root", "root");
        } catch (PDOException $e) {
            die ("Error" . $e->getMessage());
        }
    }

}
