<?php
if(isset($_SESSION['login'])){
  $prefix = "Welkom: " . $_SESSION['voornaam'];
}else {
  $prefix = "";
}

//Nog niet ingeloged
$stdmenu = "
  <ul>
    <li><img src='img/logo.png' alt='jocosushi'></li>
    <li><img src='img/sushi.png' alt='jocosushi'></li>
    <li><a href='index.php'><div class='button'>Home</div></a></li>
    <li><a href='index.php?page=contact'><div class='button'>Contact</div></a></li>
    <li><a href='index.php?page=producten'><div class='button'>Producten</div></a></li>
    <li><a href='index.php?page=inloggen'><div class='button'>Inloggen</div></a></li>
  </ul>
  ";

// ingeloged als normale gebruiker
$usermenu = "
  <ul>
    <li><img src='img/logo.png' alt='jocosushi'></li>
    <li><img src='img/sushi.png' alt='jocosushi'></li>
    <li><a href='index.php'><div class='button'>Home</div></a></li>
    <li><a href='index.php?page=contact'><div class='button'>Contact</div></a></li>
    <li><a href='index.php?page=producten'><div class='button'>Producten</div></a></li>
    <li><a href='index.php?page=uitloggen'><div class='button'>Uitloggen</div></a></li>
    <li class='button'>$prefix</li>
  </ul>
  ";

//admin menu
  $adminmenu = "
    <ul>
      <li><img src='img/logo.png' alt='jocosushi'></li>
      <li><img src='img/sushi.png' alt='jocosushi'></li>
      <li><a href='index.php'><div class='button'>Home</div></a></li>
      <li><a href='index.php?page=medewerker/producten_beheer'><div class='button'>Beheer sushi</div></a></li>
      <li><a href='index.php?page=medewerker/nieuws_beheer'><div class='button'>Beheer nieuws</div></a></li>
      <li><a href='index.php?page=medewerker/users_beheer'><div class='button'>Beheer users</div></a></li>
      <li><a href='index.php?page=uitloggen'><div class='button'>Uitloggen</div></a></li>
    </ul>
    ";
  if(isset($_SESSION['login'])){
    if($_SESSION['rol'] == 1){
      echo $usermenu;
    }elseif ($_SESSION['rol'] == 7){
      echo $adminmenu;
    }
    }else {
      echo $stdmenu;
  }
