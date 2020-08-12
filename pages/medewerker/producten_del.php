<h1>Delete producten</h1>

<?php
CheckRole(5);
if(isset($_POST['ja'])){
  $id = $_GET['id'];

  $sql = "DELETE FROM producten WHERE productID=$id";
  if(SQLExec($sql)){
    header('location: index.php?page=medewerker/producten_beheer');
  }
}elseif (isset($_POST['nee'])) {
  header('location: index.php?page=medewerker/producten_beheer');
}
?>

<form class="" action="" method="post">
  <label for="">Weet u het zeker</label>
  <br>
  <input type="submit" name="ja" value="Ja">
  <input type="submit" name="nee" value="Nee">
</form>
