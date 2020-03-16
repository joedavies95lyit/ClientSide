var xmlhttp;

window.onload=function(){
    getTeamData();
}

function getTeamData()
{	
	xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange = showTeamData;  


	xmlhttp.open("GET", "php/getTeams.php", true);  
	xmlhttp.send();	
}

function showTeamData()
{
	if (xmlhttp.readyState==4 && xmlhttp.status==200)	
	{		
	
		var data = JSON.parse(xmlhttp.responseText);	
		console.log(data);	

		
        var i=0;
        var logo = data.teams[i].code;
        var code = data.teams[i].code;
		var teamTable = '<table border=1>';   
		teamTable += '<tr> <th></th> <th>Name &#8595</button></th> <th>Rank &#8595</th> </tr>';                 
		for (var i; i < data.teams.length; i++) {			
			
			teamTable += '<tr>';
			
			teamTable += '<td><img src="icons/logo.png" height=25 width=25></img></td>';
			teamTable += '<td>' + data.teams[i].name +  ' (' + data.teams[i].code + ')' + '</td>';
			teamTable += '<td>' + data.teams[i].rank + '</td>';
		
			
			teamTable += '</tr>';
		}
		teamTable += '</table>';



        //document.getElementById("myDiv").innerHTML = teamTable; 
        $("#myDiv").html(teamTable);             
	}
}


window.onclick=function(){
	$("Name").click(function(){
        alert();  
    });
}