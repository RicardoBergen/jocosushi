<?php
//ID ophalen
$id = $_GET['id'];

$sql = "SELECT * FROM producten WHERE productID=$id";
$stmt = SQL2Array($sql);

echo "<table>";
foreach($stmt->fetchAll() as $k=>$v) {
  $naam = $v['naam'];
  $foto = $v['foto'];
  $beschrijving = $v['beschrijving'];
  $aantal = $v['aantal'];
  $prijs = $v['prijs'];
  //$allergielijstID = $v['allergielijstID'];
  echo "<tr>
          <td>
            <h2>$naam</h2>
          </td>
        </tr>
        <tr>
          <td>
            <img src='img/producten/$foto' alt='Sushu: $foto'>
          </td>
        </tr>
        <tr>
          <td>
            $beschrijving
          </td>
        </tr>
        <tr>
          <td>
            $aantal
          </td>
        </tr>
        <tr>
          <td>
            $prijs
          </td>
        </tr>";
  // "<tr><td>";
  // echo $allergielijstID;
  // echo "</td></tr>";
}
echo "</table>";

echo "<br>";
echo "<a href='index.php?page=producten'>";
echo "Ga terug naar sushi";
echo "</a>";
?>
