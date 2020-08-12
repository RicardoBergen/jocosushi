<h1>Add producten</h1>

<?php
CheckRole(5);
if(!isset($_POST['submit'])){
  $action = false;
  $naam = "";
  $beschrijving = "";
  $aantal = 0;
  $foto = "";
  $prijs = 0;
  $soort = "";
}
if(isset($_POST['submit'])){
  $naam = htmlspecialchars($_POST['naam']);
  $beschrijving = htmlspecialchars($_POST['beschrijving']);
  $aantal = htmlspecialchars($_POST['aantal']);
  $foto = htmlspecialchars($_POST['foto']);
  $prijs = htmlspecialchars($_POST['prijs']);
  $soort = htmlspecialchars($_POST['soort']);


  $sql = "INSERT INTO producten
          (naam, beschrijving, aantal, foto, prijs, soort)
          VALUES
          ('$naam', '$beschrijving', '$aantal', '$foto', '$prijs', '$soort')";

  if(SQLExec($sql)){
    $action = true;
    echo "Product is toegevoegd.";
    header('refresh:2; url=index.php?page=medewerker/producten_beheer');
  }
}elseif(isset($_POST['annuleren'])){
  header('refresh:0;url=index.php?page=admin/producten_beheer');
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
      <input type='submit' name='submit' value='submit'>
      <input type='submit' name='annuleren' value='annuleren'>
    </form>
    ";
}
?>
