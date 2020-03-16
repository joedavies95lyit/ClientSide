var xmlhttp;
var round;

window.onload=function(){
	getResultsData();
}

function getResultsData()
{	
	xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange = resultsData;  


    //round = 1;
    
	xmlhttp.open("GET", "php/getResults.php", true); 


	xmlhttp.send();	
}

function resultsData()
{
	if (xmlhttp.readyState==4 && xmlhttp.status==200)	
	{			
		var data = JSON.parse(xmlhttp.responseText);	
		console.log(data);	

		var i = 0;
		var output = '<table border=1>';   
		output += '<tr><th>Date</th><th>Time</th><th>Round</th>';      //<th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>Venues</th></tr>            
		for (var i; i < data.resultsfixtures.length; i++) {			
			output += '<tr>';
            
            output += '<td>' + data.resultsfixtures[i].date + '</td>';
            output += '<td>' + data.resultsfixtures[i].time + '</td>';
            output += '<td>' + data.resultsfixtures[i].round + '</td>';
            //output += '<td>' +  '</td>';
            //output += '<td>' + data.resultsfixtures[i].team1Name + '</td>';
            //output += '<td>' + data.resultsfixtures[i].team1Score + '</td>';
            //output += '<td>' + '-' + '</td>';
            ///output += '<td>' + data.resultsfixtures[i].team2Score + '</td>';
            ///output += '<td>' +  '</td>';
            //output += '<td>' + data.resultsfixtures[i].team2Name + '</td>';
            //output += '<td>' + data.resultsfixtures[i].venueName + '</td>';

			output += '</tr>';
		}
		output += '</table>';

		// put HTML table into div in HTML page
		document.getElementById("myDiv").innerHTML = output;            
	}
}




