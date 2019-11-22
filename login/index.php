<?php
  session_start();
	if(isset($_SESSION["login"])){
		header("location: ../admin/");
		exit;
	}  
  
  require '../fungsi/functions.php';

	if(isset($_POST["login"])){
		$username = $_POST["username"];
		$password = $_POST["password"];

    $data = mysqli_query($conn, "SELECT * FROM akun WHERE username = '$username'");
  
		if(mysqli_num_rows($data) === 1){
			$row = mysqli_fetch_assoc($data);

			if(PASSWORD_VERIFY($password, $row["password"])){
				$_SESSION["login"] = true;	

				header("location: ../admin/");
				exit;
			}
		}
		$error = true;
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
    <link rel="stylesheet" href="../css/style/login.css">

    <title>Login</title>
</head>
<body>
    <div class="row">
      <div class="col l4 s12" id="box">
        <img src="../img/log.jpg" width="200">  

        <p class="white-text"><b><i>Hai, apa kabar ?</i></b> mau upload artikel baru ya hari ini ayo kita sering berbagi ilmu seputar kehamilan dan ayo kita baca pesan dari penanya .</p>
      </div>

      <div class="col l5 s12 right">
        <div class="card" style="padding:10px;">
          <h4 class="center">Please Login... <hr></h4>  

          <?php if(isset($error)) : ?>
						<p style="color:red;font-style:italic;" class="center">Username or Password wrong!!!</p>
					<?php endif; ?>  

          <form action="" method="POST">
            <div class="input-field">
              <input id="nama" type="text" name="username" class="validate">
              <label for="nama">USERNAME</label>
            </div>

            <div class="input-field">
              <input id="email" type="password" name="password" class="validate">
              <label for="email">PASSWORD</label>
            </div>

            <button class="waves-effect waves-dark btn green darken-1" name="login"><i class="material-icons left">done</i>Login</button>
          </form>
        </div>
      </div>
    </div>

  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/materialize.min.js"></script>
  <script src="../js/index.js"></script>
</body>
</html>