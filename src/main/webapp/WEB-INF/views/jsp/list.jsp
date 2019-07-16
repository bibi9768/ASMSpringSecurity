<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/6631cf4e8b.js"></script>
<script src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

// Code formatDate abcxyz
function formatDate(date) {
    var yyyy = date.getFullYear();
    var dd = date.getDate();
    var mm = (date.getMonth() + 1);

    if (dd < 10)
        dd = "0" + dd;

    if (mm < 10)
        mm = "0" + mm;

    var current_day = yyyy + "-" + mm + "-" + dd;

    var hours = date.getHours()
    var minutes = date.getMinutes()
    var seconds = date.getSeconds();

    if (hours < 10)
        hours = "0" + hours;

    if (minutes < 10)
        minutes = "0" + minutes;

    if (seconds < 10)
        seconds = "0" + seconds;

//     return current_day + " " + hours + ":" + minutes + ":" + seconds;
return current_day;
}
function loadData()
{
    $.ajax({
        url: "ajax",
        dataType: 'json',
        type: 'get',
        cache:false,
        success: function(data){
            /*console.log(data);*/
            var event_data = '';

            $.each(data, function(index, value){
            	var date = new Date(value.createDate);
            	var formattedDate = formatDate(date);
                console.log(value);
                event_data += '<tbody>';
                if(value.authorID === <c:out value="${userid}"></c:out>){
                event_data += '<tr>';
                event_data += '<td>'+value.contentID+'</td>';
                event_data += '<td>'+value.title+'</td>';
                event_data += '<td>'+value.brief+'</td>';
                //event_data += '<td>'+value.contents+'</td>';
                event_data += '<td>'+formattedDate + "  " + value.updateTime + '</td>';
                //event_data += '<td>'+value.updateTime+'</td>';


                /* value.authorID === 1: Kiem tra ID */
                event_data += value.authorID === <c:out value="${userid}"></c:out> ?  '<td><a href="update?id='+value.contentID+'">update</a></td>' : '<td></td>';

                //event_data += '<td><a href="delete?id='+value.contentID+' id='delete'">delete</a></td>';

				/* value.authorID === 1: Kiem tra ID */
                event_data += value.authorID === <c:out value="${userid}"></c:out> ? "<td><a href='#' onclick='deleteBook("+value.contentID +");'>delete</a></td>" : '<td></td>';
                //event_data += '<td>'+value.sort+'</td>';
               // event_data += '<td>'+value.authorID+'</td>';
                event_data += '</tr>';
                }
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
	if(confirm("Do you want to delete?")){
		$.ajax({
	        url: 'del/'+id,
	        method: 'GET',
	        success: function () {
	    $("#list_table_json > tbody").empty();
	            alert("Deleted!");
	            loadData();
	        },
	        error: function (error) {
	            alert(error);
	        }
	    });
	}else{
		alert("Cancel");
	};

}</script>

</head>
<body onload="loadData();">

	<div class="container">
		<header>
			<div class="row border border-info border-bottom-0">
				<div class="col-11 bg-light text-secondary p-2">CSM</div>
				<div class="col-1 bg-light text-right">
					<div class="btn-group">
						<button type="button" class="btn btn-light dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-user"></i>
						</button>
						<div class="dropdown-menu dropdown-menu-right">
							<button class="dropdown-item" type="button"
								onclick="location.href='#'">
								<i class="fas fa-user p-2"></i>User Profile
							</button>
							<button class="dropdown-item" type="button"
								onclick="location.href='logout'">
								<i class="fas fa-sign-out-alt p-2"></i>Logout
							</button>
						</div>
					</div>
				</div>
			</div>
		</header>
		<div class="row">
			<div class="col-3 bg-light p-2 border border-info border-right-0 ">
				<div class="row p-2 ">
					<div class="col-9  ">
						<input type="text" class="form-control" placeholder="Search...">
					</div>
					<div class="col-3">
						<button type="button" class="btn btn-while">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
				<div class="row p-2">
					<div class="col">
						<a href="<c:out value="${list}"></c:out>"><i class="fas fa-table"> View contents</i></a>
					</div>
				</div>
				<div class="row p-2">
					<div class="col">
						<a href="create"><i class="fas fa-edit"> Form content</i></a>
					</div>
				</div>
			</div>

			<div class="col-9 border border-info">
				<h2 class="py-3">View Contents</h2>
				<div class="container"></div>
			<%-- <table class="table table-striped">
					<tr>
						<th>#</th>
						<th>Title</th>
						<th>Brief</th>
						<th>Create Date</th>
						<th></th>
						<th></th>
					</tr>
					<c:forEach var="content" items="${contents }" varStatus="status">
						<tr>
							<td>${content.contentID }</td>
							<td>${content.title }</td>
							<td>${content.brief }</td>
							<td><fmt:formatDate value="${content.createDate }"
									pattern="yyyy-MM-dd"></fmt:formatDate> ${content.updateTime }</td>
							<!-- dinh dang  nam thang ngay su dung thu vien fmt -->
							<td><a href="update?id=${content.contentID }">update</a></td>
							<td><a href="delete?id=${content.contentID }"
								onclick="return confirm('Delete it?')">delete</a></td>

						</tr>
					</c:forEach>
				</table> --%>

				<table class="table table-hover table-bordered text-center" id="list_table_json">
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
			</div>
		</div>
	</div>

</body>
</html>