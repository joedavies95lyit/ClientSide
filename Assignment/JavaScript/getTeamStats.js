$("document").ready(function() {
    getData();
});

function getData(){
    $.post("getTeamStats.php")
}