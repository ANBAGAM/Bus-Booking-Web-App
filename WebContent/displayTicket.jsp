<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking Details</title>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<title>Insert title here</title>
</head>
<body align="center">
<h1 class="text-danger" align="center">Ticket Booked Successfully !!!!</h1><br>
<table align="center" class="table table-info" style="width:50%" align="center">
<tr>
<th  class="table-primary">
Mail ID:</th>
<td>
${email}
</td>

</tr>

<tr>
<th class="table-primary">
Bus ID:</th>
<td>
${bus_id}
</td>

</tr>
<tr>
<th class="table-primary">
Seat No:</th>
<td>
${seat_no}
</td>

</tr>



<tr>
<th class="table-primary">
Fare:</th>
<td>
${price}
</td>

</tr>



</table>
<h1 class="text-success" align="center">Happy Journey</h1><br>
<h2 class="text-warning" align="center"> Get ready for Ride </h2>
</body>
</html>
