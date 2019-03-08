<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function check(seat, number) {
		var status = document.getElementById(seat).innerHTML;
		if (status == "BOOK") {
			document.getElementById(seat).innerHTML = "RELEASE";
			//document.getElementById(seat).style.backgroundColor='#FF00FF';
			document.getElementById(number).value = "yes";

		} else if (status == "RELEASE") {
			document.getElementById(seat).innerHTML = "BOOK";

			document.getElementById(number).value = "no";

		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking Details</title>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<h3 align="right" style="color: white;">Welcome:${email}</h3>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<button type="button" class="btn btn-danger">
		<a href="Logout" style="color: white;">Logout</a>
	</button>


	</nav>

	<h3 align="center" class="text-danger">Bus No:${bus_id}</h3>
	<br>
	<br>
	<br>
	<br>
	<form method="post" action="BookSeat">
		<c:forEach var="Book" items="${list}">
			<table width=500 align="center">
				<tr>
					<td width="10%" align="center">S1</td>
					<td width="10%" align="center">S2</td>
					<td width="20%" align="center"></td>
					<td width="10%" align="center">S3</td>
					<td width="10%" align="center">S4</td>
				</tr>
				<tr>
					<td width="10%" align="center"><input type="hidden" id="1"
						name="1" value="no">
						<button type="button" class="btn btn-success" id="s1"
							onclick='check("s1","1")'>${Book.seat_s1}</button></td>
					<td width="10%" align="center"><input type="hidden" id="2"
						name="2" value="no">
						<button type="button" id="s2" class="btn btn-success"
							onclick='check("s2","2")'>${Book.seat_s2}</button></td>
					<td width="20%"></td>
					<td width="10%" align="center"><input type="hidden" id="3"
						name="3" value="no">
						<button type="button" id="s3" class="btn btn-success"
							onclick='check("s3","3")'>${Book.seat_s3}</button></td>
					<td width="10%" align="center"><input type="hidden" id="4"
						name="4" value="no">
						<button type="button" id="s4" class="btn btn-success"
							onclick='check("s4","4")'>${Book.seat_s4}</button></td>
				</tr>

				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>

				<tr>
					<td width="10%" align="center">S5</td>
					<td width="10%" align="center">S6</td>
					<td width="20%" align="center"></td>
					<td width="10%" align="center">S7</td>
					<td width="10%" align="center">S8</td>
				</tr>
				<tr>
					<td width="10%" align="center"><input type="hidden" id="5"
						name="5" value="no">
						<button type="button" id="s5" class="btn btn-success"
							onclick='check("s5","5")'>${Book.seat_s5}</button></td>
					<td width="10%" align="center"><input type="hidden" id="6"
						name="6" value="no">
						<button type="button" id="s6" class="btn btn-success"
							onclick='check("s6","6")'>${Book.seat_s6}</button></td>
					<td width="20%"></td>
					<td width="10%" align="center"><input type="hidden" id="7"
						name="7" value="no">
						<button type="button" id="s7" class="btn btn-success"
							onclick='check("s7","7")'>${Book.seat_s7}</button></td>
					<td width="10%" align="center"><input type="hidden" id="8"
						name="8" value="no">
						<button type="button" id="s8" class="btn btn-success"
							onclick='check("s8","8")'>${Book.seat_s8}</button></td>
				</tr>

				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>

				<tr>
					<td width="10%" align="center">S9</td>
					<td width="10%" align="center">S10</td>
					<td width="20%" align="center"></td>
					<td width="10%" align="center">S11</td>
					<td width="10%" align="center">S12</td>
				</tr>
				<tr>
					<td width="10%" align="center"><input type="hidden" id="9"
						name="9" value="no">
						<button type="button" id="s9" class="btn btn-success"
							onclick='check("s9","9")'>${Book.seat_s9}</button></td>
					<td width="10%" align="center"><input type="hidden" id="10"
						name="10" value="no">
						<button type="button" id="s10" class="btn btn-success"
							onclick='check("s10","10")'>${Book.seat_s10}</button></td>
					<td width="20%"></td>
					<td width="10%" align="center"><input type="hidden" id="11"
						name="11" value="no">
						<button type="button" id="s11" class="btn btn-success"
							onclick='check("s11","11")'>${Book.seat_s11}</button></td>
					<td width="10%" align="center"><input type="hidden" id="12"
						name="12" value="no">
						<button type="button" id="s12" class="btn btn-success"
							onclick='check("s12","12")'>${Book.seat_s12}</button></td>
				</tr>

				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>

				<tr>
					<td width="10%" align="center">S13</td>
					<td width="10%" align="center">S14</td>
					<td width="20%" align="center"></td>
					<td width="10%" align="center">S15</td>
					<td width="10%" align="center">S16</td>
				</tr>
				<tr>
					<td width="10%" align="center"><input type="hidden" id="13"
						name="13" value="no">
						<button type="button" id="s13" class="btn btn-success"
							onclick='check("s13","13")'>${Book.seat_s13}</button></td>
					<td width="10%" align="center"><input type="hidden" id="14"
						name="14" value="no">
						<button type="button" id="s14" class="btn btn-success"
							onclick='check("s14","14")'>${Book.seat_s14}</button></td>
					<td width="20%"></td>
					<td width="10%" align="center"><input type="hidden" id="15"
						name="15" value="no">
						<button type="button" id="s15" class="btn btn-success"
							onclick='check("s15","15")'>${Book.seat_s15}</button></td>
					<td width="10%" align="center"><input type="hidden" id="16"
						name="16" value="no">
						<button type="button" id="s16" class="btn btn-success"
							onclick='check("s16","16")'>${Book.seat_s16}</button></td>
				</tr>

				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>

				<tr>
					<td width="10%" align="center">S17</td>
					<td width="10%" align="center">S18</td>
					<td width="20%" align="center"></td>
					<td width="10%" align="center">S19</td>
					<td width="10%" align="center">S20</td>
				</tr>
				<tr>
					<td width="10%" align="center"><input type="hidden" id="17"
						name="17" value="no">
						<button type="button" id="s17" class="btn btn-success"
							onclick='check("s17","17")'>${Book.seat_s17}</button></td>
					<td width="10%" align="center"><input type="hidden" id="18"
						name="18" value="no">
						<button type="button" id="s18" class="btn btn-success"
							onclick='check("s18","18")'>${Book.seat_s18}</button></td>
					<td width="20%"></td>
					<td width="10%" align="center"><input type="hidden" id="19"
						name="19" value="no">
						<button type="button" id="s19" class="btn btn-success"
							onclick='check("s19","19")'>${Book.seat_s19}</button></td>
					<td width="10%" align="center"><input type="hidden" id="20"
						name="20" value="no">
						<button type="button" id="s20" class="btn btn-success"
							onclick='check("s20","20")'>${Book.seat_s20}</button></td>
				</tr>
			</table>
			<br>
			<br>
			<br>
			<br>
			<div align="center">
				<input type="submit" value="Next" class="btn btn-primary">
			</div>
		</c:forEach>
	</form>
</body>
</html>