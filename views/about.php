<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/icon.css">
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/style/about.css">
    <title>About Us</title>
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
              <li class="active"><a href=""><i class="material-icons left" id="icon">info_outline</i>About Us</a></li>
              <li><a href="artikel.php"><i class="material-icons left" id="icon">description</i>Article</a></li>
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
    <li class="active"><a href="">About Us</a></li>
    <li><a href="artikel.php">Article</a></li>
    <li><a href="contact.php">Contact Us</a></li>
  </ul>
  <!-- akhir nav-mobile -->

	<div class="contaner">
		<!-- <h4 class="center" id="title">About Us <hr></h4> -->

		<div class="row" id="isi">
      <div class="col l6 s12" id="logo">
        <img src="../img/log.jpg" width="300">
      </div>

			<div class="col l5 s12">
        <div class="card-panel">
          <h4 class="center">About Us <hr></h4>  

          <p><b>Hamil Pintar</b> adalah sebuah website yang memberikan informasi seputar kehamilan untuk memberikan pemhaman kepada para ibu-ibu muda, di hamil pintar memiliki fitur kirim pertanyaan yang namanya mesegdoc yang akan di jawab oleh dokter ke email penanya .</p>
        </div>
      </div>
		</div>
    <!-- akhir row -->
  </div>
  
  <footer>
    <p class="center">&copy;copyright 2018 by team pancen oye .</p>
  </footer>

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/materialize.min.js"></script>  
  <script src="../js/index.js"></script>
</body>
</html>