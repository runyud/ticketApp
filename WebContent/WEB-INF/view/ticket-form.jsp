<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
	<title>Save This Ticket</title>
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css">
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/ticket-style.css">
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Ticket Management System</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save this Ticket</h3>
		<form:form action="saveTicket" modelAttribute="ticket" method="POST">
			<!-- associate this data with ticket id -->
			<form:hidden path="ticketId" />
			<table>
				<tbody>
					<tr>
						<td><label>Ticket Id: </label></td>
						<td><form:input path="ticketId" /></td>
					</tr>
					<tr>
						<td><label>First Name: </label></td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td><label>Last Name: </label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Email: </label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td><label>Seat Number: </label></td>
						<td><form:input path="seatNumber" /></td>
					</tr>
					<tr>
						<td><label>Row: </label></td>
						<td><form:input path="row" /></td>
					</tr>
					<tr>
						<td><label>Level: </label></td>
						<td><form:input path="level" /></td>
					</tr>
					<tr>
						<td><label>Address: </label></td>
						<td><form:input path="address" /></td>
					</tr>
					<tr>
						<td><label>Venue Name: </label></td>
						<td><form:input path="venueName" /></td>
					</tr>
					<tr>
						<td><label>Barcode: </label></td>
						<td><form:input path="barcode" /></td>
					</tr>
					<tr>
						<td><label>Status: </label></td>
						<td><form:input path="status" /></td>
					</tr>
					<tr>
						<td><label>Event Id: </label></td>
						<td><form:input path="eventId" /></td>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/tickets/list" class="button button1">Back</a>
		</p>
	</div>
</body>


</html>