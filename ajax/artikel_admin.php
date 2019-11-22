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