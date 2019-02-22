<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bus List</title>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
</head>
<body>
<body bgcolor="#d5d5c3">
<h3 align="right">Welcome:${email}</h3>
<h4>The available Buses!!!</h4>
<form method="post" action="DisplaySeat">
<table>
		<thead>
		<tr>
			<th>BusId</th>
			<th>BusName</th>
			<th>Duration</th>
			<th>Category</th>
			<th>Price</th>
		</tr>
		</thead>
	<tbody>
	<c:forEach var="showbus" items="${bus}">
	<tr>
		<td>${showbus.id}</td>
		<td>${showbus.name}</td>
		<td>${showbus.duration}</td>
		<td>${showbus.category}</td>
		<td>${showbus.price}</td>
		<td><button type="submit" value=${showbus.id} name="id"  style='font-size:20px'>Book <i class='fas fa-bus'></i></button></td>
	</tr>
	</c:forEach>
	
	</tbody>
</table>
</form>
</body>
</html>