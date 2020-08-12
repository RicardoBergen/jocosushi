<h1>View klanten</h1>

<?php
  CheckRole(7);
  $id = $_GET['id'];

  $sql = "SELECT * FROM klanten WHERE klantID=$id";
  $stmt = SQL2Array($sql);

  echo "
    <table>";
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
        echo"
          <tr>
            <td>
              ID:
            </td>
            <td>
              $id
            </td>
          </tr>
          <tr>
            <td>
              Voornaam:
            </td>
            <td>
              $voornaam
            </td>
          </tr>
          <tr>
            <td>
              Tussenvoegsel:
            </td>
            <td>
              $tussenvoegsel
            </td>
          </tr>
          <tr>
            <td>
              Achternaam:
            </td>
            <td>
              $achternaam
            </td>
          </tr>
          <tr>
            <td>
              E-mail:
            </td>
            <td>
              $email
            </td>
          </tr>
          <tr>
            <td>
              Straat:
            </td>
            <td>
              $straat
            </td>
          </tr>
          <tr>
            <td>
              Huisnummer:
            </td>
            <td>
              $huisnummer
            </td>
          </tr>
          <tr>
            <td>
              Toevoeging:
            </td>
            <td>
              $toevoeging
            </td>
          </tr>
          <tr>
            <td>
              Postcode:
            </td>
            <td>
              $postcode
            </td>
          </tr>
          <tr>
            <td>
              Plaats:
            </td>
            <td>
              $plaats
            </td>
          </tr>
          <tr>
            <td>
              Password:
            </td>
            <td>
              $password
            </td>
          </tr>
          <tr>
            <td>
              Roll:
            </td>
            <td>
              $rol
            </td>
          </tr>
          ";
      }
  echo"
    </table>
  <br>
  <a href='index.php?page=medewerker/users_beheer'>
    Terug naar users beheer
  </a>";

?>
