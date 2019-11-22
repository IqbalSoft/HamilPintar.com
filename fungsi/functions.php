<?php
    $conn = mysqli_connect("localhost", "root", "", "hamilpintar");

    function query($query){
        global $conn;
        $result = mysqli_query($conn, $query);
        $rows = [];
        while ( $row = mysqli_fetch_assoc($result) ){
            $rows [] = $row;
        }
        return $rows;
    }
    function pesan($data){
        global $conn;

        date_default_timezone_set('asia/Jakarta');
        $nama       = htmlspecialchars(strtolower($data["nama"]));
        $email      = htmlspecialchars($data["email"]);
        $isi        = htmlspecialchars($data["isi_pesan"]);
        $tanggal    = date('l,d-M-Y');
        $waktu      = date('H:i:sa');

        $query = "INSERT INTO pesan
                        VALUES
                 ('', '$nama','$email', '$isi', '$tanggal','$waktu')";

        mysqli_query($conn, $query);
        return mysqli_affected_rows($conn);
    }
    function hapus_pesan($id){
      global $conn;
      $query = "DELETE FROM pesan WHERE id_pesan = '$id'";

      mysqli_query($conn, $query);
      return mysqli_affected_rows($conn);
    }
    function hapus_artikel($id){
      global $conn;
      $query = "DELETE FROM artikel WHERE id = '$id'";

      mysqli_query($conn, $query);
      return mysqli_affected_rows($conn);
    }
    function artikel($data){
      global $conn;
      $judul = htmlspecialchars($data["judul"]);
      $isi   = htmlspecialchars($data["isi"]);
      
      $img = upload();
      if ( !$img ) {
        return false;
      }
      
      $query = "INSERT INTO artikel
                      VALUES
              ('', '$img','$judul', '$isi')";
      mysqli_query($conn, $query);
      return mysqli_affected_rows($conn);
    }
    function upload(){
      $namaFile = $_FILES['gambar']['name'];
      $ukuranFile = $_FILES['gambar']['size'];
      $error = $_FILES['gambar']['error'];
      $tmpName = $_FILES['gambar']['tmp_name'];
  
      if ( $error === 4 ) {
        echo "<script>
            alert('Please choose image!');
            </script>";
        return false;	  
      }

      $ekstensi = ['png', 'jpg', 'jpeg'];
      $ekstensiGambar = explode('.', $namaFile);
      $ekstensiGambar = strtolower(end($ekstensiGambar));

      if ( !in_array($ekstensiGambar, $ekstensi) ) {
          echo "<script>
            alert('Your choose not image format!');
            </script>";
        return false;
        } 

        if ( $ukuranFile > 3000000 ) {
          echo "<script>
            alert('Size very big!');
            </script>";
        return false;
        }

        $newname = uniqid();
        $newname .= '.';
        $newname .= $ekstensiGambar;
        move_uploaded_file($tmpName, '../../data/' . $newname);
        return $newname;
    }  
    function edit_artikel($data){
      global $conn;
      $id           = $data["id"];
      $gambarLama   = $data["gambarlama"];
      $judul        = htmlspecialchars($data["judul"]);
      $isi          = htmlspecialchars($data["isi"]);

      if($_FILES['gambar']['error'] === 4){
        $img = $gambarLama;
      }
      else{
        $img = upload();
      }

      $query = "UPDATE artikel SET
                gambar = '$img',
                judul  = '$judul',
                isi    = '$isi'
                
                WHERE id = '$id'";
      mysqli_query($conn, $query);
      return mysqli_affected_rows($conn);
    }
    function cari($keyword){
      global $conn;

      $query = "SELECT * FROM artikel
                      WHERE
                judul LIKE '%$keyword%'";

     return query($query);
    }
    function search($keyword){
      global $conn;

      $query = "SELECT * FROM artikel
                      WHERE
                judul LIKE '%$keyword%'";
      return query($query);
    }
?>