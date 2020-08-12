<h1>Beheer users</h1>
<?php
CheckRole(7);

$sql = "SELECT * FROM klanten";
$stmt = SQL2Array($sql);

echo"
  <table>";
  foreach ($stmt->fetchAll() as $k => $v) {
    $id = $v['klantID'];
    $voornaam = $v['voornaam'];
    $tussenvoegsel = $v['tussenvoegsel'];
    $achternaam = $v['achternaam'];
    echo "
      <tr>
        <td>
          $voornaam
        </td>
        <td>
          $tussenvoegsel
        </td>
        <td>
          $achternaam
        </td>
        <td>
          <a href='index.php?page=medewerker/users_view&id=$id'>
            View
          </a>
        </td>
        <td>
          <a href='index.php?page=medewerker/users_edit&id=$id'>
            Edit
          </a>
        </td>
        <td>
          <a href='index.php?page=medewerker/users_del&id=$id'>
            Delete
          </a>
        </td>
        <td>
          <a href='index.php?page=medewerker/users_resetpwd&id=$id'>
            Reset password
          </a>
        </td>
      </tr>
    ";
  }
echo"
  </table>
  <br>
  <a href='index.php?page=medewerker/users_add'>
    add new user
  </a>";
 ?>
