<?php
    require '../../fungsi/functions.php';

    $id = $_GET["id"];

    if(hapus_artikel($id) > 0){
        echo "<script>
                alert('Article successfull delected!');
                document.location.href = '../artikel.php';
              </script>";
    }
    else{
      echo "<script>
                alert('Article not successfull delected!');
                document.location.href = '../artikel.php';
              </script>";
    }
?>