<?php
$sql = "SELECT * FROM producten";
$stmt = SQL2Array($sql);

//producten een voor een op het beeld zetten
foreach($stmt->fetchAll() as $k=>$v) {
  $id = $v['productID'];
  $naam = $v['naam'];
  $aantal =  $v['aantal'];
  $prijs = $v['prijs'] ;
  $foto = $v['foto'];
  echo "<a href='index.php?page=detail&id=$id'>
          <div class=product>
            <div >
              <img class=p-image src='img/producten/$foto' alt='Sushi: $foto'>
            </div>
            <p>$naam($aantal stuks)</p>
            <p>$prijs</p>
          </div>
        </a>";
}
?>
