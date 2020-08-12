<table>
  <form method="post" action="">
    <tr>
      <td>
        <p>Naam</p>
      </td>
      <td>
        <input class="naam" type="text">
      </td>
    </tr>
    <tr>
      <td>
        <p>Onderwerp</p>
      </td>
      <td>
        <input class="onderwerp" type="text">
      </td>
    </tr>
    <tr>
      <td>
        <p>Tekst</p>
      </td>
      <td>
        <textarea class="bericht" placeholder="Write something.."></textarea>
      </td>
    </tr>
    <tr>
      <td>
        <input type="submit" name="submit">
      </td>
    </tr>
  </form>
</table>
</br>
<p>Openingstijden: </p>
<p>Maandag tot en met zondag van 12:00 tot 22:00 open</p>

<?php
if (isset($_POST['submit'])){
  echo "
    <p class='error'>De contact pagina komt op een latere tijdstip</p>";
}
 ?>
