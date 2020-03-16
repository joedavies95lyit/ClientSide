<?php
//$round = $_GET['round'];

$connection = mysqli_connect("localhost","root","");
mysqli_select_db($connection,"rwc2019y3");
$result = mysqli_query($connection,"select * from resultsfixtures");

$rs = array();
$i=0;
while($rs[] = mysqli_fetch_assoc($result)) {
// do nothing ;-)
}
mysqli_close($connection);
unset($rs[count($rs)-1]);  

print("{ \"results\":" . json_encode($rs) . "}");

?>