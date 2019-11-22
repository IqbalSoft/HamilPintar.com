<?php 
  require 'fungsi/functions.php';

  $artikel = query("SELECT * FROM artikel LIMIT 3");  
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/icon.css">
    <link rel="stylesheet" href="css/materialize.css">
    <link rel="stylesheet" href="css/style/index.css">
    <title>Home</title>
</head>
<body>
  <div class="navbar-fixed">
      <nav class="pink darken-1">
        <div class="nav-wrapper">
          <div class="container">
            <a href="index.php" class="brand-logo"><img src="img/logo.jpg"> <span>HamilPintar</span></a>
            <a href="#" class="sidenav-trigger" data-target="mobile-nav" ><i class="material-icons">menu</i></a>

            <ul class="right hide-on-med-and-down">
              <li class="active"><a href=""><i class="material-icons left" id="icon">home</i>Home</a></li>
              <li><a href="views/about.php"><i class="material-icons left" id="icon">info_outline</i>About Us</a></li>
              <li><a href="views/artikel.php"><i class="material-icons left" id="icon">description</i>Article</a></li>
              <li><a href="views/contact.php"><i class="material-icons left" id="icon">contacts</i>Contact Us</a></li>
            </ul>
          </div>
        </div>
      </nav>
  </div>
  <!-- akhir nav-dekstop -->

  <ul class="sidenav" id="mobile-nav">
    <a class="waves-effect sidenav-close btn-flat right red-text darken-2"><i class="material-icons">close</i></a><br><br>
    <li class="active"><a href="">Home</a></li>
    <li><a href="views/about.php">About Us</a></li>
    <li><a href="views/artikel.php">Article</a></li>
    <li><a href="views/contact.php">Contact Us</a></li>
  </ul>
  <!-- akhir nav-mobile -->

  <div class="slider">
    <ul class="slides">
      <li>
        <img src="img/ibu.jpg" style="filter: grayscale(0.7) !important;" class="responsive-img">
    
        <div class="caption center-align" id="h5">
          <h3>Artikel Kehamilan</h3>
          <h5>Membantu ibu-ibu yang sedang hamil mencari <br> info seputar kehamilan.</h5>
          <e class="center" id="more"><a href="#artikel" class="darken-2 pink-text page-scroll"><i class="large material-icons">expand_more</i></a></e>
        </div>
      </li>

      <li>
        <img src="img/kb.jpg" class="responsive-img">

        <div class="caption left-align" id="h5">
          <h3>Penyuluhan Keluarga <br> Berencana (KB)</h3>
          <h5>2 anak lebih baik .</h5>
          <e class="center more" id="more"><a href="#artikel" class="darken-2 pink-text page-scroll"><i class="large material-icons">expand_more</i></a></e>
        </div>
      </li>

      <li>
        <img src="img/org.jpg" style="filter: grayscale(0.7);" class="responsive-img">

        <div class="caption right-align" id="h5">
          <h3>Tanya jawab dengan dokter</h3>
          <h5>Fitur tanya jawab menggunakan mesegdoc .</h5>
          <e class="center" id="more"><a href="#artikel" class="darken-2 pink-text page-scroll"><i class="large material-icons">expand_more</i></a></e>
        </div>
      </li>
    </ul>
  </div>
  <!-- akhir carousel -->

  <section id="artikel">
    <div class="container">
      <h3 class="center">Article<hr></h3>

      <div class="row">
        <?php foreach($artikel as $row) : ?>  
        <div class="col l4 s12">
          <div class="card">
            <div class="card-image">
              <img src="data/<?= $row["gambar"]; ?>">
            </div>

            <div class="card-content">
              <span class="card-title"><?= $row["judul"]; ?></span>
              <a href="views/baca-index.php?id=<?= $row["id"]; ?>" class="left" id="baca"><i class="material-icons right">chevron_right</i>Baca</a>
            </div>
          </div>
        </div>
        <?php endforeach;?> 
        <div class="col l12 s12 center"><a href="views/artikel.php" id="lebih">Lebih banyak artikel...</a></div>
      </div>
      <!-- akhir row  -->
    </div>
    <!-- akhir container -->
  </section>

  <div class="parallax-container">
    <div class="parallax"><img src="img/testimoni/bg-testi.jpg"></div>

    <div class="container testi">
      <h3 class="center light white-text">Testimonials <hr></h3>

      <div class="row">
        <div class="col m4 s12 center">
          <img src="img/testimoni/1.png" class="foto" width="100px">
          <p class="parag"><i>Sangat membantu terutama untuk ibu muda.</i></p>
        </div>

        <div class="col m4 s12 center">
          <img src="img/testimoni/2.png" class="foto" width="100px">
          <p class="parag"><i>Terima kasih hamilpintar yang telah memotivasi saya.</i></p>
        </div>

        <div class="col m4 s12 center">
          <img src="img/testimoni/3.png" class="foto" width="100px">
          <p class="parag"><i>Banyak artikel yang membantu menjaga kandungan dalam masa-masa kehamilan.</i></p>
        </div>
      </div>
    </div>
  </div>
  <!-- akhir testimoni -->

  <footer>
    <p class="center">&copy;copyright 2018 by team pancen oye .</p>
  </footer>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/materialize.min.js"></script>
  <script src="js/jquery.easing.js"></script>  
  <script src="js/index.js"></script>
</body>
</html>