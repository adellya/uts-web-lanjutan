<?php

namespace App;

class Category extends Koneksi {

    protected object $db;

    public function __construct()
    {
        parent::__construct();
    }

    public function showAll()
    {
        $sql = "SELECT * FROM category";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $data = [];
        while ($rows = $stmt->fetch()) {
            $data[] = $rows;
        }
        return $data;
    }

    public function store() {
        $name = $_POST['cat_name'];
        $text = $_POST['text'];

        $sql = "INSERT INTO category VALUES (NULL, :name, :text)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(":name", $name);
        $stmt->bindParam(":text", $text);
        $stmt->execute();
    }
}
?>
