<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center">
<h1>Ticket Booked Successfully !!!!</h1>
<table align="center">
<tr>
<th>
Mail ID:</th>
<td>
${email}
</td>

</tr>

<tr>
<th>
Bus ID:</th>
<td>
${bus_id}
</td>

</tr>
<tr>
<th>
Seat No:</th>
<td>
${seat_no}
</td>

</tr>



<tr>
<th>
Fare</th>
<td>
${price}
</td>

</tr>



</table>
<h1>Happy Journey</h1><br>
<h2> Get ready for Ride </h2>
</body>
</html>
