<?php
  session_start();

	if(!isset($_SESSION["login"])){
		header("location: ../login/");
		exit;
	}

  require '../fungsi/functions.php';

  $artikel = query("SELECT * FROM artikel");

  if(isset($_POST["cari"])){
    $artikel = cari($_POST["keyword"]);
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
    <link rel="stylesheet" href="../css/style/admin.css">
    <title>Artikel</title>
</head>
<body>
  <div class="navbar-fixed">
      <nav class="pink darken-1">
        <div class="nav-wrapper">
          <div class="container">
            <a href="#" class="brand-logo">Dashboard</a>
            <a href="#" class="sidenav-trigger" data-target="mobile-nav" ><i class="material-icons">menu</i></a>

            <ul class="right hide-on-med-and-down">
              <li><a href="../admin/"><i class="material-icons left" id="icon">email</i>Inbox</a></li>
              <li class="active"><a href="artikel.php"><i class="material-icons left" id="icon">description</i>Article</a></li>
              <li><a href="fungsi/logout.php"><i class="material-icons left" id="icon">logout</i>Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>
  </div>
  <!-- akhir nav-dekstop -->

  <ul class="sidenav" id="mobile-nav">
    <a class="waves-effect sidenav-close btn-flat right red-text darken-2"><i class="material-icons">close</i></a><br><br>
    <li><a href=""><i class="material-icons" id="icon">mail</i> Inbox</a></li>
    <li class="active"><a href="artikel.php"><i class="material-icons left" id="icon">description</i>Article</a></li>
    <li><a href="fungsi/logout.php"><i class="material-icons left" id="icon">logout</i>Logout</a></li>
  </ul>
  <!-- akhir nav-mobile -->
  
  <div class="row">
      <div class="col l3 s12 right">
        <form action="" method="POST">
          <input type="search" name="keyword" id="keyword" placeholder="Cari judul artikel...">
          <span class="material-icons right" id="carian">search</span>
          <button type="submit" name="cari" id="tbl">Cari</button>  
        </form>
      </div>
    </div>
  
  <div class="contaner">
      <a href="fungsi/form-artikel.php" id="btn" class="btn waves-effect waves-light green darken-2"><i class="material-icons left" id="icon">description</i> Add new article</a>
      <br><br>
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

                  <table>
                    <tr>
                      <td><a href="fungsi/edit-artikel.php?id=<?= $row["id"]; ?>" class="btn waves-effect waves-light"><i class="material-icons left" id="icon">edit</i>Edit</a></td>

                      <td><a href="fungsi/delete_artikel.php?id=<?= $row["id"]; ?>" onclick="return confirm('Are you sure ?');" class="btn waves-effect waves-light red darken-2"><i class="material-icons left" id="icon">delete</i>Delete</a></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      </div>
      <!-- akhir row  -->
  </div>
    <!-- akhir container -->

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/materialize.min.js"></script>
  <script src="../js/artikela.js"></script>  
  <script src="../js/index.js"></script>
</body>
</html>