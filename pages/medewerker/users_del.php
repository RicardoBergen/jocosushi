<h1>Delete user</h1>

<?php
CheckRole(5);
if(isset($_POST['ja'])){
  $id = $_GET['id'];

  $sql = "DELETE FROM klanten WHERE klantID=$id";
  if(SQLExec($sql)){
    header('location: index.php?page=medewerker/users_beheer');
  }
}elseif (isset($_POST['nee'])) {
  header('location: index.php?page=medewerker/users_beheer');
}
?>

<form class="" action="" method="post">
  <label for="">Weet u het zeker</label>
  <br>
  <input type="submit" name="ja" value="Ja">
  <input type="submit" name="nee" value="Nee">
</form>
