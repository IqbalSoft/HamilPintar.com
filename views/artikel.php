<?php
  require '../fungsi/functions.php';

  $artikel = query("SELECT * FROM artikel");

  if(isset($_POST["cari"])){
    $artikel = search($_POST["keyword"]);
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/icon.css">
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/style/artikel.css">
    <title>Artikel</title>
</head>
<body>
<div class="navbar-fixed">
      <nav class="pink darken-1">
        <div class="nav-wrapper">
          <div class="container">
            <a href="../index.php" class="brand-logo"><img src="../img/logo.jpg"> <span>HamilPintar</span></a>
            <a href="#" class="sidenav-trigger" data-target="mobile-nav" ><i class="material-icons">menu</i></a>

            <ul class="right hide-on-med-and-down">
              <li><a href="../index.php""><i class="material-icons left" id="icon">home</i>Home</a></li>
              <li><a href="about.php"><i class="material-icons left" id="icon">info_outline</i>About Us</a></li>
              <li class="active"><a href="artikel.php"><i class="material-icons left" id="icon">description</i>Article</a></li>
              <li><a href="contact.php"><i class="material-icons left" id="icon">contacts</i>Contact Us</a></li>
            </ul>
          </div>
        </div>
      </nav>
  </div>
  <!-- akhir nav-dekstop -->

  <ul class="sidenav" id="mobile-nav">
    <a class="waves-effect sidenav-close btn-flat right red-text darken-2"><i class="material-icons">close</i></a><br><br>
    <li><a href="../index.php">Home</a></li>
    <li><a href="about.php">About Us</a></li>
    <li class="active"><a href="artikel.php">Article</a></li>
    <li><a href="contact.php">Contact Us</a></li>
  </ul>
  <!-- akhir nav-mobile -->
  
  <div class="row">
      <div class="col l3 s12 right">
        <form action="" method="POST">
          <input type="search" name="keyword" id="keyword" placeholder="Cari judul artikel...">
          <span class="material-icons right" id="carian">search</span>  

          <button name="cari" id="tbl">Cari</button>
        </form>
      </div>
    </div>
  
  <div class="contaner">
      <div class="row">
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
      </div>
      <!-- akhir row  -->
  </div>
    <!-- akhir container -->

   <footer>
    <p class="center">&copy;copyright 2018 by team pancen oye .</p>
  </footer> 

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/materialize.min.js"></script>
  <script src="../js/artikel.js"></script>  
  <script src="../js/index.js"></script>
</body>
</html>