<?php

    // This code shows how to build a set of JSON data taken from 2 SQL SELECT statements

    $connection = mysqli_connect("localhost","root","");
    mysqli_select_db($connection,"rwc2019y3");

    // get the artists
    $result=mysqli_query($connection,"select * from venues");
    
    $teamdata=array(); // will add all stats to this array eventually
    
    while($venues = mysqli_fetch_assoc($result)) {
        $points = array();   // current artist array details 
        $points['id']=$venues['id'];
        //$points['name']=$teams['name'];
    
        // . $artist['artist_id']
        // count tracks for current artist with a new SELECT and add to array
        $result1=mysqli_query($connection,"SELECT team1code, team2code FROM resultsfixtures WHERE venueid=" . $venues['id']);
        while($resultsfixtures = mysqli_fetch_assoc($result1)) {
            //$artistData['tracks']=intval($tracks['trackCount']);
            $points['code1']=$resultsfixtures['team1code'];
            $points['code2']=$resultsfixtures['team2code'];
        }

        // print(json_encode($artistData));team

        array_push($teamdata,$points);
    }


    mysqli_close($connection);
    
    
    // VERY IMPORTANT TO COMMENT OUT LINE BELOW!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    //unset($artiststats[count($artiststats)-1]);  //removes a null value
    
    
    print("{ \"teams\":" . json_encode($teamdata) . "}");
?>