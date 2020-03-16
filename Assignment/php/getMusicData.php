<?php

    // This code shows how to build a set of JSON data taken from 2 SQL SELECT statements

    $connection = mysqli_connect("localhost","root","");
    mysqli_select_db($connection,"music");

    // get the artists
    $result=mysqli_query($connection,"select * from artist order by artist_id");
    
    $artiststats=array(); // will add all stats to this array eventually
    
    while($artist = mysqli_fetch_assoc($result)) {
        $artistData = array();   // current artist array details 
        $artistData['artist_id']=$artist['artist_id'];
        $artistData['artist_name']=$artist['artist_name'];


        // . $artist['artist_id']
        // count tracks for current artist with a new SELECT and add to array
        $result1=mysqli_query($connection,"SELECT COUNT(*) as trackCount FROM `track` WHERE artist_id=" . $artist['artist_id']);
        while($tracks = mysqli_fetch_assoc($result1)) {
            //$artistData['tracks']=intval($tracks['trackCount']);
            $artistData['tracks']=$tracks['trackCount'];
        }

        // print(json_encode($artistData));

        array_push($artiststats,$artistData);
    }


    mysqli_close($connection);
    
    
    // VERY IMPORTANT TO COMMENT OUT LINE BELOW!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    //unset($artiststats[count($artiststats)-1]);  //removes a null value
    
    
    print("{ \"artiststats\":" . json_encode($artiststats) . "}");
?>
