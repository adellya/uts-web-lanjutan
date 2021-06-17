<?php

namespace App;

class Post extends Koneksi {

    protected object $db;

    public function __construct()
    {
        parent::__construct();
    }

    public function showAll()
    {
        $sql = "SELECT post.*, category.* FROM post JOIN category ON post.cat_id = category.id";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $data = [];
        while ($rows = $stmt->fetch()) {
            $data[] = $rows;
        }
        return $data;
    }

    public function store() {
        $title = $_POST['title'];
        $kategori = $_POST['kategori'];
        $text = $_POST['text'];

        $slug = strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-', $title));
        $date = date("Y-m-d", time());

        $sql = "INSERT INTO post VALUES (NULL, :date, :title, :slug, :text, :cat_id)";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(":date", $date);
        $stmt->bindParam(":title", $title);
        $stmt->bindParam(":slug", $slug);
        $stmt->bindParam(":text", $text);
        $stmt->bindParam(":cat_id", $kategori);
        $stmt->execute();
    }

}
