var xmlhttp;

window.onload=function(){
	getTeamData();
}

function getTeamData()
{	
	xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange = showTeamData;  


	xmlhttp.open("GET", "php/getVenues.php", true);  
	xmlhttp.send();	
}

function showTeamData()
{
	if (xmlhttp.readyState==4 && xmlhttp.status==200)	
	{		
	
		var data = JSON.parse(xmlhttp.responseText);	
		console.log(data);	

		//var logo = data.teams[i].code;
		
		var venuesTable = '<table border=1>';   
		venuesTable += '<tr><th>Name</button></th></tr>';                 
		for (var i = 0; i < data.venues.length; i++) {			
			
			venuesTable += '<tr>';
			
			venuesTable += '<td>' + data.venues[i].name + '</td>';

			venuesTable += '<td>' + data.venues[i].north + '+' +data.venues[i].east + '</td>';
		
			venuesTable += '</tr>';
		}
		venuesTable += '</table>';

		document.getElementById("myDiv").innerHTML = venuesTable;            
	}
}



