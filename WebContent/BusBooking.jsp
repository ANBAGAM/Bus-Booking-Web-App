<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking Details</title>
</head>
<body>
<h3 align="right">Welcome:${email}</h3>
<br>
<br>
<center>

<h2>BOOKING DETAILS</h2>
<br>


<form method="post" action="BusDetailsServlet">
<h2>FROM</h2>


<select name="from"  style="width: 250px;">
<option value="Namakkal">Namakkal</option>
<option value="Chennai">Chennai</option>
<option value="Madurai">Madurai</option>
<option value="Erode">Erode</option>
<option value="Banglore">Banglore</option>
<option value="Goa">Goa</option>
</select>
<br>
<br><br>



<h2>TO</h2>
<select name="to" style="width: 250px;">
<option value="Namakkal">Namakkal</option>
<option value="Chennai">Chennai</option>
<option value="Madurai">Madurai</option>
<option value="Erode">Erode</option>
<option value="Banglore">Banglore</option>
<option value="Goa">Goa</option>
</select>
<br>


<br>

  <h2>DATE OF JOURNEY</h2>
  <input type="date" name="trip-start" style="width: 250px;"
       min="2019-02-22" max="2019-03-31"><br><br>
  <input type="submit">
</form>


</center>



</body>
</html>