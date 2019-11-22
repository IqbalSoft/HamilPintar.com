<?php
  require '../fungsi/functions.php';

  $id = $_GET["id"];

  $artikel = query("SELECT * FROM artikel WHERE id = '$id'");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/icon.css">
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/style/baca.css">

    <title>Read Article</title>
</head>
<body>
  <div class="back">
    <a href="../index.php" class="btn waves white black-text"><i class="material-icons left">arrow_back</i> Back to home</a>
  </div>

  <div class="row">
    <div class="col l10 s12">
      <div class="card-panel">
        <?php foreach($artikel as $row) : ?>
          <h5 class="center"> <?= $row["judul"]; ?><hr></h5>

          <textarea cols="30" rows="50" disabled><?= $row["isi"]; ?></textarea>
        <?php endforeach; ?>  
      </div>
    </div>
  </div>

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/materialize.min.js"></script>
  <script src="../js/index.js"></script>
</body>
</html>