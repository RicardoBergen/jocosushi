<h1>Edit user</h1>

<?php
  CheckRole(7);
  $id = $_GET['id'];

  if(!isset($_POST['submit'])){
    $action=false;
      $sql = "SELECT * FROM klanten WHERE klantID=$id";
      $stmt = SQL2Array($sql);
    foreach($stmt->fetchAll() as $k=>$v){
      $id = $v['klantID'];
      $voornaam = $v['voornaam'];
      $tussenvoegsel = $v['tussenvoegsel'];
      $achternaam = $v['achternaam'];
      $email = $v['email'];
      $straat = $v['straat'];
      $huisnummer = $v['huisnummer'];
      $toevoeging = $v['toevoeging'];
      $postcode = $v['postcode'];
      $plaats = $v['plaats'];
      $password = $v['password'];
      $rol = $v['rol'];
    }
  }

  if(isset($_POST['submit'])){
    $voornaam = htmlspecialchars($_POST['voornaam']);
    $tussenvoegsel = htmlspecialchars($_POST['tussenvoegsel']);
    $achternaam = htmlspecialchars($_POST['achternaam']);
    $email = htmlspecialchars($_POST['email']);
    $straat = htmlspecialchars($_POST['straat']);
    $huisnummer = htmlspecialchars($_POST['huisnummer']);
    $toevoeging = htmlspecialchars($_POST['toevoeging']);
    $postcode = htmlspecialchars($_POST['postcode']);
    $plaats = htmlspecialchars($_POST['plaats']);
    $rol = htmlspecialchars($_POST['rol']);

    $sql = "UPDATE klanten
            SET voornaam = '$voornaam',
                tussenvoegsel = '$tussenvoegsel',
                achternaam = '$achternaam',
                email = '$email',
                straat = '$straat',
                huisnummer = '$huisnummer',
                toevoeging = '$toevoeging',
                postcode = '$postcode',
                plaats = '$plaats',
                rol = '$rol'
            WHERE klantID = $id";

    if(SQLExec($sql)){
      $action=true;
      echo "Klant geupdated";
      header('refresh:2;url=index.php?page=medewerker/users_beheer');
    }

  }elseif(isset($_POST['annuleren'])){
  header('refresh:2;url=index.php?page=medewerker/users_beheer');
  }
  if (!$action){
    echo"
      <form method='post'>
        <table>
          <tr>
            <td>
              Voornaam
            </td>
            <td>
              <input type='text' name='voornaam' value='$voornaam'><br>
            </td>
          </tr>
          <tr>
            <td>
              Tussenvoegsel
            </td>
            <td>
              <input type='text' name='tussenvoegsel' value='$tussenvoegsel'><br>
            </td>
          </tr>
          <tr>
            <td>
              Achternaam
            </td>
            <td>
              <input type='text' name='achternaam' value='$achternaam'><br>
            </td>
          </tr>
          <tr>
            <td>
              E-mail
            </td>
            <td>
              <input type='text' name='email' value='$email'><br>
            </td>
          </tr>
          <tr>
            <td>
              Straat
            </td>
            <td>
              <input type='text' name='straat' value='$straat'><br>
            </td>
          </tr>
          <tr>
            <td>
              Huisnummer
            </td>
            <td>
              <input type='text' name='huisnummer' value='$huisnummer'><br>
            </td>
          </tr>
          <tr>
            <td>
              Toevoeging
            </td>
            <td>
              <input type='text' name='toevoeging' value='$toevoeging'><br>
            </td>
          </tr>
          <tr>
            <td>
              Postcode
            </td>
            <td>
              <input type='text' name='postcode' value='$postcode'><br>
            </td>
          </tr>
          <tr>
            <td>
              Plaats
            </td>
            <td>
              <input type='text' name='plaats' value='$plaats'><br>
            </td>
          </tr>
          <tr>
            <td>
              rol
            </td>
            <td>
              <input type='text' name='rol' value='$rol'><br>
            </td>
          </tr>
        </table>
        <input type='submit' name='submit' value='wijzigen'>
        <input type='submit' name='annuleren' value='annuleren'>
      </form>
      ";
  }
?>
