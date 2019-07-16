<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>test</title>
<link
	href="<c:url value="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/mdb.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/main.js" />"></script>
<script src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script>
<script src="<c:url value="/resources/js/popper.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<style>
.map-container {
	overflow: hidden;
	padding-bottom: 56.25%;
	position: relative;
	height: 0;
}

.map-container iframe {
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	position: absolute;
}
</style>


<script type="text/javascript">
function loadData()
{


    $.ajax({
        url: "/ajax",
        dataType: 'json',
        type: 'get',
        cache:false,
        success: function(data){
            /*console.log(data);*/
            var event_data = '';
            $.each(data, function(index, value){
                /*console.log(value);*/
                event_data += '<tbody>';
                event_data += '<tr>';
                event_data += '<td>'+value.contentID+'</td>';
                event_data += '<td>'+value.title+'</td>';
                event_data += '<td>'+value.brief+'</td>';
                //event_data += '<td>'+value.contents+'</td>';
                event_data += '<td>'+value.createDate+'</td>';
                //event_data += '<td>'+value.updateTime+'</td>';
                event_data += '<td><a href="update?id='+value.contentID+'">update</a></td>';
                //event_data += '<td><a href="delete?id='+value.contentID+' id='delete'">delete</a></td>';


                event_data += "<td><a href='#' onclick='deleteBook("+value.contentID +");'>delete</a></td>";
                //event_data += '<td>'+value.sort+'</td>';
               // event_data += '<td>'+value.authorID+'</td>';
                event_data += '</tr>';
                event_data += '</tbody>';
            });
            $("#list_table_json").append(event_data);
        },
        error: function(d){
            /*console.log("error");*/
            alert("404. Please wait until the File is Loaded.");
        }
    });
};
</script>
<script>
function deleteBook(id){
    $.ajax({
        url: '/del/'+id,
        method: 'GET',
        success: function () {
    $("#list_table_json > tbody").empty();
            alert('Deleted');
            loadData();
        },
        error: function (error) {
            alert(error);
        }
    });
}</script>
</head>
<body class="grey lighten-3" onload="loadData();">
<table class="table table-responsive table-hover table-bordered" id="list_table_json">
    <thead>
        <tr>
            <th>#</th>
            <th>Title</th>
            <th>Brief</th>
            <th>Create Date</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
</table>



</body>

</html>

</body>
</html>
