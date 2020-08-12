<?php
//start
session_start();

//Verbinding maken
function ConnectDB(){
  $servername = "localhost";
  $username = "root";
  $password = "";
  // $servername = "148498.ao-alkmaar.nl";
  // $username = "s148498";
  // $password = "Wh1t35nak3";
  // $dbname = s148498_Jocosushi;

  try{
    $conn = new PDO("mysql:host=$servername;dbname=jocosushi", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $conn;
  }
  catch(PDOExeption $e)
  {
    echo "Connection failed: " . $e->getMessage();
  }
}

function SQLExec($sql){
  $conn=ConnectDB();
  try{
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    return true;
  }
  catch(PDOExeption $e){
    echo "Quiry failed: " . $e->getMessage();
  }
  $conn = null;
}

function SQL2Array($sql){
  $conn=ConnectDB();
  try {
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    return $stmt;
  }
  catch(PDOException $e){
    echo "Query failed: " . $e->getMessage();
  }
  $conn = null;
}

function CheckRole($rol){
  if(isset($_SESSION['login'])){
    if(!$_SESSION['rol'] >= $rol){
      header('refresh:0;url=index.php?page=home');
    }
  }
}
?>
