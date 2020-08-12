<h1>Edit producten</h1>

<?php
  CheckRole(5);
  $id = $_GET['id'];

  if(!isset($_POST['submit'])){
    $action=false;
      $sql = "SELECT * FROM producten WHERE productID=$id";
      $stmt = SQL2Array($sql);
    foreach($stmt->fetchAll() as $k=>$v){
        $id = $v['productID'];
        $naam = $v['naam'];
        $beschrijving = $v['beschrijving'];
        $aantal = $v['aantal'];
        $foto = $v['foto'];
        $prijs = $v['prijs'];
        $soort = $v['soort'];
    }
  }

  if(isset($_POST['submit'])){
    $naam = htmlspecialchars($_POST['naam']);
    $beschrijving = htmlspecialchars($_POST['beschrijving']);
    $aantal = htmlspecialchars($_POST['aantal']);
    $foto = htmlspecialchars($_POST['foto']);
    $prijs = htmlspecialchars($_POST['prijs']);
    $soort = htmlspecialchars($_POST['soort']);

    $sql = "UPDATE producten
            SET naam = '$naam',
                beschrijving = '$beschrijving',
                aantal = '$aantal',
                foto = '$foto',
                prijs = '$prijs',
                soort = '$soort'
            WHERE productID = $id";

    if(SQLExec($sql)){
      $action=true;
      echo "Producten geupdated";
      header('refresh:2;url=index.php?page=medewerker/producten_beheer');
    }

  }elseif(isset($_POST['annuleren'])){
  header('refresh:2;url=index.php?page=medewerker/producten_beheer');
  }
  if (!$action){
    echo"
      <form method='post'>
        <table>
          <tr>
            <td>
              <p>Naam</p>
            </td>
            <td>
              <input type='text' name='naam' value='$naam'><br>
            </td>
          </tr>
          <tr>
            <td>
              <p>Beschrijving</p>
            </td>
            <td>
              <input type='text' name='beschrijving' value='$beschrijving'>
            </td>
          </tr>
          <tr>
            <td>
              <p>Aantal</p>
            </td>
            <td>
              <input type='text' name='aantal' value='$aantal'>
            </td>
          <tr>
          <tr>
            <td>
              <p>foto(naam)</p>
            </td>
            <td>
              <input type='text' name='foto' value='$foto'>
            </td>
          </tr>
          <tr>
            <td>
              <p>Prijs €</p>
            </td>
            <td>
              <input type='text' name='prijs' value='$prijs'>
            </td>
          </tr>
          <tr>
            <td>
              <p>Soort</p>
            </td>
            <td>
              <input type='text' name='soort' value='$soort'>
            </td>
          </tr>
        </table>
        <input type='submit' name='submit' value='wijzigen'>
        <input type='submit' name='annuleren' value='annuleren'>
      </form>
      ";
  }
?>
