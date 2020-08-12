<h1>View producten</h1>

<?php
  CheckRole(5);
  $id = $_GET['id'];

  $sql = "SELECT * FROM producten WHERE productID=$id";
  $stmt = SQL2Array($sql);

  echo "
    <table>";
      foreach($stmt->fetchAll() as $k=>$v){
        $id = $v['productID'];
        $naam = $v['naam'];
        $beschrijving = $v['beschrijving'];
        $aantal = $v['aantal'];
        $foto = $v['foto'];
        $prijs = $v['prijs'];
        $soort = $v['soort'];
        echo"
          <tr>
            <td>
              $id
            </td>
          </tr>
          <tr>
            <td>
              $naam
            </td>
          </tr>
          <tr>
            <tr>
              $beschrijving
            </td>
          </tr>
          <tr>
            <td>
              $foto
            </td>
          </tr>
          <tr>
            <tr>
              $aantal Stucks
            </td>
          </tr>
          <tr>
            <tr>
              € $prijs
            </td>
          </tr>";
      }
  echo"
    </table>
  <br>
  <a href='index.php?page=medewerker/producten_beheer'>
    Terug naar producten beheer
  </a>";

?>
