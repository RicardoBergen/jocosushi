<!DOCTYPE html>
<?php include('functions.php') ?>
<html lang="nl" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta lang="nl">
  <title>jocosushi</title>
  <link rel="stylesheet" type="text/css" href="css/jocosushi.css">
</head>
<body>
  <div class='menu'>
    <?php include('pages/menu.php'); ?>
  </div>
  <div class='section'>
    <div class='nieuws1'>
      <?php include('pages/nieuws1.php'); ?>
    </div>
    <div class='content'>
      <?php
      if(empty($_GET['page'])){
        include('pages/home.php');
      }elseif ($_GET['page']=='contact') {
        include('pages/contact.php');
      }elseif ($_GET['page']=='producten') {
        include('pages/producten.php');
      }elseif ($_GET['page']=='detail') {
        include('pages/detail.php');
      }elseif ($_GET['page']=='inloggen') {
        include('pages/inloggen.php');
      }elseif ($_GET['page']=='registreren') {
        include('pages/registreren.php');
      }elseif ($_GET['page']=='uitloggen') {
        include('pages/uitloggen.php');

      }elseif ($_GET['page']=='medewerker/producten_beheer') {
        include('pages/medewerker/producten_beheer.php');
      }
      elseif ($_GET['page']=='medewerker/producten_add') {
        include('pages/medewerker/producten_add.php');
      }
      elseif ($_GET['page']=='medewerker/producten_view') {
        include('pages/medewerker/producten_view.php');
      }
      elseif ($_GET['page']=='medewerker/producten_edit') {
        include('pages/medewerker/producten_edit.php');
      }
      elseif ($_GET['page']=='medewerker/producten_del') {
        include('pages/medewerker/producten_del.php');
      }
      elseif ($_GET['page']=='medewerker/nieuws_beheer') {
        include('pages/medewerker/nieuws_beheer.php');
      }
      elseif ($_GET['page']=='medewerker/users_beheer') {
        include('pages/medewerker/users_beheer.php');
      }
      elseif ($_GET['page']=='medewerker/users_add') {
        include('pages/medewerker/users_add.php');
      }
      elseif ($_GET['page']=='medewerker/users_view') {
        include('pages/medewerker/users_view.php');
      }
      elseif ($_GET['page']=='medewerker/users_edit') {
        include('pages/medewerker/users_edit.php');
      }
      elseif ($_GET['page']=='medewerker/users_del') {
        include('pages/medewerker/users_del.php');
      }
      elseif ($_GET['page']=='medewerker/users_resetpwd') {
        include('pages/medewerker/users_resetpwd.php');
      }else {
        include('pages/home.php');
      }
      ?>
    </div>
    <div class='nieuws2'>
      <?php include('pages/nieuws2.php'); ?>
    </div>
  </div>
  <div class='footer'>
    <?php include('pages/footer.php'); ?>
  </div>
</body>
</html>
