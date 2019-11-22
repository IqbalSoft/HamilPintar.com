<?php 
  $connect = require '../fungsi/functions.php';

  if(isset($_POST["submit"])){
    if(pesan($_POST) > 0){
      echo "<script>
              alert('Pesan berhasil terkirim!');
            </script>";
    }
    else{
      echo "<script>
              alert('Pesan gagal terkirim!');
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
    <link rel="stylesheet" href="../css/icon.css">
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/style/contact.css">
    <title>Contact Us</title>
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
              <li><a href="artikel.php"><i class="material-icons left" id="icon">description</i>Article</a></li>
              <li class="active"><a href="contact.php"><i class="material-icons left" id="icon">contacts</i>Contact Us</a></li>
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
    <li><a href="artikel.php">Article</a></li>
    <li class="active"><a href="contact.php">Contact Us</a></li>
  </ul>
  <!-- akhir nav-mobile -->
   
   <div class="row">
     <div class="col l4 s12">
      <div class="card-panel">
        <h3 class="h3 center">Contact Me <hr class="hr"></h3>
       
        <ul>
          <li class="judul">Call center HamilPintar</li>
          <li></li>
          <li>082361060356</li>

          <li class="judul">Dokter Kandungan</li>
          <li class="ul2"></li>
          <li>082344556654</li>
          <br>
          
          <li class="judul">Dokter anak</li>
          <li class="ul3"></li>
          <li>082344565676</li>
          <br>

          <li class="judul">Psikolog</li>
          <li class="ul4"></li>
          <li>081265789045</li>
        </ul>
        <hr>

        <ul>
          <li class="judul">Email HamilPintar</li>
          <li class="ul5"></li>
          <li>pintarhamil@gmail.com</li>

          <li class="judul">Dokter Kandungan</li>
          <li class="ul6"></li>
          <li>dok.indonesia@gmail.com</li>

          <li class="judul">Dokter Anak</li>
          <li class="ul7"></li>
          <li>dok.indonesia@gmail.com</li>
          <br>

          <li class="judul">Psikolog</li>
          <li class="ul8"></li>
          <li>psikolog.indo@yahoo.com</li>
        </ul>
      </div>
    </div>
    
    <div class="col l4 s12" id="desc">
      <h4 class="h44">Mesegdoc</h4>

      <p>Mesegdoc adalah fitur untuk menanyakan seputar kehamilan atau pasca kehamilan yang akan di jawab ke email  penanya.</p>
    </div>

    <div class="col l4 s12 right">
      <div class="card"> 
       <h4 class="center h4">Mesegdoc <hr class="hr"></h4>

       <form action="" method="POST">
          <div class="input-field">
            <input id="nama" type="text" name="nama" class="validate">
            <label for="nama">name</label>
          </div>

          <div class="input-field">
            <input id="email" type="text" name="email" class="validate">
            <label for="email">email</label>
          </div>

          <div class="input-field">
            <label for="pesan"><h6>Messages :</h6></label><br>
            <textarea name="isi_pesan" id="pesan" placeholder="Fill in messages"></textarea>
          </div>

          <button class="waves-effect waves-dark btn blue darken-1" name="submit"><i class="material-icons left">send</i>Send</button>
        </form>
      </div>
    </div>
   </div> 

    <footer>
    <p class="center">&copy;copyright 2018 by team pancen oye .</p>
  </footer>

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/materialize.min.js"></script>  
  <script src="../js/index.js"></script>
</body>
</html>