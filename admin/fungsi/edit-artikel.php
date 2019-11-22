<?php
  session_start();

	if(!isset($_SESSION["login"])){
		header("location: ../../login/");
		exit;
	}

  require '../../fungsi/functions.php';

  $id = $_GET["id"];

  $data = query("SELECT * FROM artikel WHERE id = '$id'")[0];

  if(isset($_POST["kirim"])){
    if(edit_artikel($_POST) > 0){
      echo "<script>
              alert('Article successfull updated!');
              document.location.href = '../artikel.php';
            </script>";

    }
    else{
      echo "<script>
              alert('Article not successfull updated!');
            </script>";
    }
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="../../css/icon.css">
    <link rel="stylesheet" href="../../css/materialize.css">
    <link rel="stylesheet" href="../../css/style/form.css">

    <title>New article</title>
</head>
<body>
  <h4 class="center">Edit ariticle <hr></h4>
  
  <div class="row">
    <div class="col l4 s12">
      <p id="desc"><b>Hai, admin</b> apakah ada kesalahan di artikel <b><?= $data["judul"]; ?></b> ayo kita edit kembali artikel ini agar menjadi lebih sempurna .</p>

      <img src="../../data/<?= $data["gambar"]; ?>" class="img" width="300">
    </div>

    <div class="col l6 s12 right">
      <div class="card">
       <form action="" method="POST" enctype="multipart/form-data">
       <input type="hidden" name="gambarlama" value="<?= $data["gambar"]; ?>">

        <div class="file-field input-field">
          <div class="btn">
            <span><i class="material-icons left">add</i>Choose new image</span>
            <input type="file" name="gambar" id="img">
          </div>
          <div class="file-path-wrapper">
            <input class="file-path validate" type="text">
          </div>
        </div>

        <div class="input-field">
          <input type="text" name="judul" id="judul" value="<?= $data["judul"]; ?>" class="validate">
          <label for="judul">Name article</label>
        </div>

        <label for="isi"><h6>Fill Article</h6></label>
        <textarea name="isi" cols="30" rows="10" placeholder="Fill in your article here..."><?= $data["isi"]; ?></textarea>
        <br><br>
        
        <input type="hidden" name="id" value="<?= $data["id"]; ?>">

        <button type="submit" name="kirim" class="btn waves-effect green darken-2"><i class="material-icons left" id="icon">file_upload</i> Update</button>
        <a href="../artikel.php" class="btn waves-effect red darken-2"><i class="material-icons left" id="icon">close</i> cancel</a>
       </form>
      </div>
    </div>
  </div>

  <script src="../../js/jquery-3.3.1.min.js"></script>
  <script src="../../js/materialize.min.js"></script>  
  <script src="../../js/index.js"></script>
</body>
</html>