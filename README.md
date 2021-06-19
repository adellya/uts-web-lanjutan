# Instalasi
1. Lakukan clone repository dengan perintah `git clone https://github.com/adellya/uts-web-lanjutan.git`.
2. Import **database.sql**.
3. Setting kofigurasi yang ada pada folder **app/Koneksi.php**.
    ```
    try {
        $this->db = new PDO("mysql:host=localhost; port=3306; dbname=dbweb4", "root", "root");
    }
    ```
4. Test
