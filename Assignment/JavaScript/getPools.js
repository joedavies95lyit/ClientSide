var xmlhttp;
var pool;


window.onload=function(){
	$("#pool").click(function(){
        getPoolData();
});

function getPoolData()
{	
	xmlhttp=new XMLHttpRequest();
    xmlhttp.onreadystatechange = poolData; 
    
    pool = $("#pool").val();
    if ($("#pool").val()==0){
        $("#option:0").hide();
    }
    else
	xmlhttp.open("GET", "php/getPools.php?pool="+pool, true); 
	xmlhttp.send();	
}

function poolData()
{
	if (xmlhttp.readyState==4 && xmlhttp.status==200)	
	{				
		var data = JSON.parse(xmlhttp.responseText);	
		console.log(data);	
        var i = 0

		var output = '<table border=1>';   
		output += '<tr><th></th><th>Team</th><th>P</th><th>W</th><th>D</th><th>L</th><th>Tries F</th><th>Pts F</th><th>Pts A</th><th>+/-</th><th>Bonus Pts</th><th>Points</th></tr>';                  
		for (var i; i < data.pools.length; i++) {			
			output += '<tr>';
			output += '<td><img src="icons/logo.png" height=25 width=25></img></td>';
			output += '<td>' + data.pools[i].teamCode + '</td>';
			output += '<td>' + ' ' + data.pools[i].played + ' ' + '</td>';
            output += '<td>' + ' ' + data.pools[i].won + ' ' + '</td>';
            output += '<td>' + ' ' + data.pools[i].drew + ' ' + '</td>';
            output += '<td>' + ' ' + data.pools[i].lost + ' ' + '</td>';
            output += '<td>' + data.pools[i].triesFor + '</td>';
            output += '<td>' + data.pools[i].ptsFor + '</td>';
            output += '<td>' + data.pools[i].ptsAgainst + '</td>';
            output += '<td>' + (data.pools[i].ptsFor - data.pools[i].ptsAgainst) + '</td>';
			output += '<td>' + data.pools[i].bonusPoints + '</td>';
			output += '<td>' + data.pools[i].pts + '</td>';
			output += '</tr>';
		}
		output += '</table>';

        //document.getElementById("firstDiv").innerHTML = "Pool " + pool;
        $("#firstDiv").html("Pool " + pool);
        //document.getElementById("myDiv").innerHTML = output; 
        $("#myDiv").html(output);   
	}
}
}