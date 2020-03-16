<?php

$connection = mysqli_connect("localhost","root","");
mysqli_select_db($connection,"rwc2019y3");

// get the teams
$result = mysqli_query($connection,"select * from teams order by code");

$teams = array();

while($teams[] = mysqli_fetch_assoc($result)) {
    $teamdata = array(); 
    //$rs2['teamCode']=$rs['code'];

 
    $result2 = mysqli_query($connection,"SELECT COUNT(*) AS uo from pools where teamCode = 'ARG'"); 
    while($groups = mysqli_fetch_assoc($result2)){
       $teamdata['pools']=$groups['uo'];

    }
    //unset($rs2[count($rs2)-1]);
    array_push($teams,$teamdata);

}


mysqli_close($connection);
unset($teams[count($teams)-1]);  

print("{ \"teamstats\":" . json_encode($teams) . "}");

?>