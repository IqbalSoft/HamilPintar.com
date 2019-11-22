<?php
  require '../fungsi/functions.php';

  $keyword = $_GET["keyword"];

  $query = "SELECT * FROM artikel
                  WHERE
            judul LIKE '%$keyword%'";
   $artikel = query($query);         
?>
<div id="container">
  <?php foreach($artikel as $row) : ?>
    <div class="col l3 s12">
      <div class="card">
        <div class="card-image">
          <img src="../data/<?= $row["gambar"]; ?>" id="img">
        </div>

        <div class="card-content">
          <span class="card-title"><?= $row["judul"]; ?></span><br>

          <a href="baca.php?id=<?= $row["id"]; ?>" class="left" id="baca"><i class="material-icons right">chevron_right</i>Baca</a>
        </div>
      </div>
    </div>
  <?php endforeach; ?>
</div>