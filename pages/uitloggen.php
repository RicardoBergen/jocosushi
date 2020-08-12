<form class="" action method="post">
  <table>
    <tr>
      <td>
        Wilt u echt uiloggen?
      </td>
    </tr>
    <tr>
      <td>
        <input type="submit" name="uitloggen" value="Ja">
        <input type="submit" name="annuleren" value="Nee">
      </td>
    </tr>
  </table>
</form>

<?php
if (isset($_POST['uitloggen'])){
  $_SESSION = array();
  echo "U bent uitgelogged";
  header('refresh:2;url=index.php?page=home');
}elseif (isset($_POST['annuleren'])) {
  header('refresh:0;url=index.php?page=home');
}
?>
