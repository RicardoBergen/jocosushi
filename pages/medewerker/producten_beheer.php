<h1>Beheer pagina</h1>
<?php
CheckRole(5);
//producten ophalen
$sql = "SELECT * FROM producten";
$stmt = SQL2Array($sql);

echo "
  <table>";
    foreach ($stmt->fetchAll( ) as $k=>$v) {
      $id = $v['productID'];
      $naam = $v['naam'];
      $prijs = $v['prijs'];
        echo "
          <tr>
            <td>
              $naam
            </td>
            <td>
              -
            </td>
            <td>
              $prijs
            </td>
            <td>
              <a href='index.php?page=medewerker/producten_view&id=$id'>
                view
              </a>
            </td>
            <td>
              <a href='index.php?page=medewerker/producten_edit&id=$id'>
                edit
              </a>
            </td>
            <td>
              <a href='index.php?page=medewerker/producten_del&id=$id'>
                delete
              </a>
            </td>
          </tr>";
    }
echo "
  </table>
<br>
<a href='index.php?page=medewerker/producten_add'>
  Product toevoegen
</a>";
?>
