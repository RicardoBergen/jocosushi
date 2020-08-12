<form method="post" action="">
<table>
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
      <p>Password</p>
    </td>
    <td>
      <input type="password" name="password">
    </td>
  </tr>
  <tr>
    <td>
      <input type="submit" name="submit" value="inloggen">
    </td>
  </tr>
  <tr>
    <td>
      <a href='index.php?page=registreren'>
        <input type="button" name="Registreren" value="registreren">
      </a>
    </td>
  </tr>
</table>
</form>

<?php
if (isset($_POST['submit'])){
$action=false;
$email=htmlspecialchars($_POST['email']);
$password=htmlspecialchars($_POST['password']);

$sql = "SELECT * FROM klanten WHERE email = '$email'";
$stmt = SQL2Array($sql);

foreach($stmt->fetchAll() as $k=>$v) {
  $passwordhash = $v['password'];
  if(password_verify($password, $passwordhash)){
    $_SESSION['login'] = true;
    $_SESSION['id'] = $v['klantID'];
    $_SESSION['email'] = $email;
    $_SESSION['rol'] = $v['rol'];
    $_SESSION['voornaam'] = $v['voornaam'];
    $_SESSION['tussenvoegsel'] = $v['tussenvoegsel'];
    $_SESSION['achternaam'] = $v['achternaam'];
    $_SESSION['straat'] = $v['straat'];
    $_SESSION['huisnummer'] = $v['huisnummer'];
    $_SESSION['toevoeging'] = $v['toevoeging'];
    $_SESSION['postcode'] = $v['postcode'];
    $_SESSION['plaats'] = $v['plaats'];
    $action = true;
    echo "U bent ingelogd";
    header('refresh:2;url=index.php?page=home');
  }else {
    echo "Uw Wachtwoord of email is fout";
  }
}
}
?>
