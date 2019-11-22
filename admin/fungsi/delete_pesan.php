<?php
    require '../../fungsi/functions.php';

    $id = $_GET["id"];

    if(hapus_pesan($id) > 0){
        echo "<script>
                alert('Messages successfull delected!');
                document.location.href = '../../admin/';
              </script>";
    }
    else{
      echo "<script>
                alert('Messages not success delected!');
                document.location.href = '../../admin/';
              </script>";
    }
?>