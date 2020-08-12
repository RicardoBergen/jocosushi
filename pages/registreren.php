<form method="post" action="">
  <table>
    <tr>
      <td>
        <p>Voornaam</p>
      </td>
      <td>
        <input type="text" name="voornaam">
      </td>
    </tr>
    <tr>
      <td>
        <p>Tussenvoegsel</p>
      </td>
      <td>
        <input type="text" name="tussenvoegsel">
      </td>
    </tr>
    <tr>
      <td>
        <p>Achternaam</p>
      </td>
      <td>
        <input type="text" name="achternaam">
      </td>
    </tr>
    <tr>
      <td>
        <p>Email</p>
      </td>
      <td>
        <input type="email" name="email">
      </td>
    </tr>
    <tr>
      <td>
        <p>Straat</p>
      </td>
      <td>
        <input type="text" name="straat">
      </td>
    </tr>
    <tr>
      <td>
        <p>Huisnummer</p>
      </td>
      <td>
        <input type="text" name="huisnummer">
      </td>
    </tr>
    <tr>
      <td>
        <p>Toevoeging</p>
      </td>
      <td>
        <input type="text" name="toevoeging" placeholder="bv: A, B, etc" >
      </td>
    </tr>
    <tr>
      <td>
        <p>Postcode</p>
      </td>
      <td>
        <input type="text" name="postcode">
      </td>
    </tr>
    <tr>
      <td>
        <p>Plaats</p>
      </td>
      <td>
        <input type="text" name="plaats">
      </td>
    </tr>
    <tr>
      <td>
        <p>Wachtwoord</p>
      </td>
      <td>
        <input type="password" name="password">
      </td>
    </tr>
    <tr>
      <td>
        <input type="submit" name="submit" value="Submit">
      </td>
    </tr>
    <tr>
      <td>
        <a href='index.php?page=inloggen'><input type="button" name="inloggen" value="Inloggen"></a>
      </td>
    </tr>
  </table>
</form>

<?php
//alle gegevens in normale en session varialbelen zetten
if (isset($_POST['submit'])){
  $voornaam=$_SESSION['voornaam']=htmlspecialchars($_POST['voornaam']);
  $tussenvoegsel=$_SESSION['tussenvoegsel']=htmlspecialchars($_POST['tussenvoegsel']);
  $achternaam=$_SESSION['achternaam']=htmlspecialchars($_POST['achternaam']);
  $email=$_SESSION['email']=htmlspecialchars($_POST['email']);
  $straat=$_SESSION['straat']=htmlspecialchars($_POST['straat']);
  $huisnummer=$_SESSION['huisnummer']=htmlspecialchars($_POST['huisnummer']);
  $toevoeging=$_SESSION['toevoeging']=htmlspecialchars($_POST['toevoeging']);
  $postcode=$_SESSION['postcode']=htmlspecialchars($_POST['postcode']);
  $plaats=$_SESSION['plaats']=htmlspecialchars($_POST['plaats']);
  $password=$_SESSION['password']=htmlspecialchars($_POST['password']);
  $passwordhash=password_hash($password, PASSWORD_DEFAULT);
  $rol = 1;

  $sql = "SELECT * FROM klanten";
  $stmt = SQL2Array($sql);

  $email_inuse = false; //Default waarde
  foreach($stmt->fetchAll() as $k=>$v) {
    if($email == $v['email']){
      $email_inuse=true;
      break;
    }
  }
  if($email_inuse)
  {
    echo 'De email is al in gebruik';
  }else{
    $sql = "INSERT INTO klanten (voornaam, tussenvoegsel, achternaam, email, straat, huisnummer, toevoeging, postcode, plaats, password, rol )
    VALUES ('$voornaam', '$tussenvoegsel', '$achternaam', '$email', '$straat', '$huisnummer', '$toevoeging', '$postcode', '$plaats', '$passwordhash', $rol)";

    if(SQLExec($sql)){
      $_SESSION = array();
      $action = true;
      echo "New record created successfully";
      header('refresh:2;url=index.php?page=inloggen');
    }else{
      echo "er is iets fout gegaaan";
    }
  }
}else{
  $action=false;
}
?>
