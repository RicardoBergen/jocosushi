<h1>Add users</h1>

<?php
CheckRole(5);
if(!isset($_POST['submit'])){
  $action = false;
    $voornaam = "";
    $tussenvoegsel = "";
    $achternaam = "";
    $email = "";
    $straat = "";
    $huisnummer = 0;
    $toevoeging = "";
    $postcode = "";
    $plaats = "";
    $password = "";
    $rol = 0;
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
  $password = htmlspecialchars($_POST['password']);
  $rol = htmlspecialchars($_POST['rol']);


  $sql = "INSERT INTO klanten
          (voornaam, tussenvoegsel, achternaam, email, straat, huisnummer, toevoeging, postcode, plaats, password, rol)
          VALUES
          ('$voornaam', '$tussenvoegsel', '$achternaam', '$email', '$straat', '$huisnummer', '$toevoeging', '$postcode', '$plaats', '$password', '$rol')";

  if(SQLExec($sql)){
    $action = true;
    echo "User is toegevoegd.";
    header('refresh:2; url=index.php?page=medewerker/users_beheer');
  }
}elseif(isset($_POST['annuleren'])){
  header('refresh:0;url=index.php?page=admin/users_beheer');
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
          Password
        </td>
        <td>
          <input type='text' name='password' value='$password'><br>
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
    <input type='submit' name='submit' value='submit'>
    <input type='submit' name='annuleren' value='annuleren'>
  </form>
    ";
}
?>
