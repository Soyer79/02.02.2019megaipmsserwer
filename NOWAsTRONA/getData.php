<?php
include 'logMeteo.php';

$b = $_REQUEST['mian'];
$typ = $_REQUEST['nazwa'];
$base = $_REQUEST['baza'];

$polaczenie = new mysqli($host, $db_user, $db_pass, $db_name);

if($polaczenie->connect_errno!=0){
    die("Error: ".$polaczenie->connect_errno."Opis: ".$polaczenie->connect_error);
}
      $typ = $polaczenie->real_escape_string($typ);
      $sqlOdczyt="SELECT `${typ}` FROM `${base}` order by `czas` desc limit 1";
      $odczyt=$polaczenie->query($sqlOdczyt);
      $row = $odczyt->fetch_row();
      $odczyt->close();
      
if ($row) {
	$result = $row[0];
     echo $result." ".$b;
    }
 else {
    echo "0 results";
}

?>