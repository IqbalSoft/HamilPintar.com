<?php 
  session_start();

	if(!isset($_SESSION["login"])){
		header("location: ../login/");
		exit;
	}

  require '../fungsi/functions.php';

  $pesan = query("SELECT * FROM pesan");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/icon.css">
    <link rel="stylesheet" href="../css/materialize.css">
    <link rel="stylesheet" href="../css/style/admin.css">

    <title>INBOX</title>
</head>
<body>
  <div class="navbar-fixed">
      <nav class="pink darken-1">
        <div class="nav-wrapper">
          <div class="container">
            <a href="#" class="brand-logo">Dashboard</a>
            <a href="#" class="sidenav-trigger" data-target="mobile-nav" ><i class="material-icons">menu</i></a>

            <ul class="right hide-on-med-and-down">
              <li class="active"><a href=""><i class="material-icons left" id="icon">email</i>Inbox</a></li>
              <li><a href="artikel.php"><i class="material-icons left" id="icon">description</i>Article</a></li>
              <li><a href="fungsi/logout.php"><i class="material-icons left" id="icon">logout</i>Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
  </div>
  <!-- akhir nav-dekstop -->

  <ul class="sidenav" id="mobile-nav">
    <a class="waves-effect sidenav-close btn-flat right red-text darken-2"><i class="material-icons">close</i></a><br><br>
    <li class="active"><a href=""><i class="material-icons" id="icon">mail</i> Inbox</a></li>
    <li><a href="artikel.php"><i class="material-icons left" id="icon">description</i>Article</a></li>
    <li><a href="fungsi/logout.php"><i class="material-icons left" id="icon">logout</i>Logout</a></li>
  </ul>
  <!-- akhir nav-mobile -->

  <div class="box">
    <h4 class="center">INBOX <hr></h4>
    <div class="row">
      <?php $i=1 ?>
      <?php foreach($pesan as $row) : ?>
      <div class="col l6 s12">
        <div class="card-panel">
          <ul>
            <li class="isi"><?= $i++; ?> |</li>
            <li class="isi" id="mail"><?= $row["email"]; ?></li>
            <li class="aksi">
              <a href="detail_pesan.php?id=<?= $row["id_pesan"]; ?>"> Open |</a>
              <a href="fungsi/delete_pesan.php?id=<?= $row["id_pesan"]; ?>" onclick="return confirm('Are you sure?');" class="hapus">Delete</a>
            </li>
          </ul>   
        </div>
      </div>
      <?php endforeach; ?>    
    </div>
  </div>
  </div>

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/materialize.min.js"></script>
  <script src="../js/index.js"></script>
</body>
</html>