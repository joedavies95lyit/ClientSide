var xmlhttp;
var code;


window.onload=function(){
	document.getElementById("").onclick=function(){
		getStatCharts();
}

function getStatCharts()
{	
	xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange = statCharts; 
	

    code =  document.getElementById("code").value;
	
	xmlhttp.open("GET", "php/getTeamStats.php?code="+code, true); 
	
	xmlhttp.send();	
}

function poolData()
{
	if (xmlhttp.readyState==4 && xmlhttp.status==200)	
	{				
		var data = JSON.parse(xmlhttp.responseText);	
		console.log(data);	
        var i = 0
        //var diff = data.pools[i].ptsFor - data.pools[i].ptsAgainst;
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

		document.getElementById("firstDiv").innerHTML = "Pool " + pool;
		document.getElementById("myDiv").innerHTML = output;            
	}
}
}