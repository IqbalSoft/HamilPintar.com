<?php
  session_start();

	if(!isset($_SESSION["login"])){
		header("location: ../login/");
		exit;
	}

  require '../fungsi/functions.php';

  $id = $_GET["id"];

  $pesan = query("SELECT * FROM pesan WHERE id_pesan = '$id'");
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/icon.css">
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/style/pesan.css">

    <title>Messages</title>
</head>
<body>
  <div class="back">
    <a href="../admin/" class="btn waves white black-text"><i class="material-icons left">arrow_back</i> Back To inbox</a>
  </div>

  <div class="row">
    <div class="col l6 s12">
      <?php foreach($pesan as $row) : ?>
      <div class="card-panel">
        <ul>
          <li><b>Email</b></li>
          <li>:</li>
          <li><?= $row["email"]; ?></li>
          <br>

          <li><b>Date</b></li>
          <li>:</li>
          <li><?= $row["tanggal"]; ?></li>
          <br>

          <li><b>Time</b></li>
          <li>:</li>
          <li><?= $row["waktu"]; ?></li>
          <hr>
          <li><b>Messages</b></li>
          <li>:</li><br>
          <li><?= $row["isi_pesan"]; ?> .</li>
        </ul>
      </div>
      <?php endforeach; ?>  
    </div>
    <!-- akhir detail -->

    <div class="col l4 s12">
      <p class="desc"><b>Hai, dokter</b> mari kita jawab pertanyaan dari <?= $row["nama"]; ?> dengan ramah dan penuh cinta <?= $row["nama"]; ?> sudah menuggu jawaban dari dokter ayo dokter balas ke emailnya <b><?= $row["email"]; ?></b> .</p>
    </div>
  </div>
  <!-- akhir row -->

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/materialize.min.js"></script>
  <script src="../js/index.js"></script>
</body>
</html>