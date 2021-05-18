<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<title>List of Tickets</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>


<body>

	<div id="wrapper">
		<div id="header">
			<h2>Ticket Management System</h2>
		</div>
	</div>

	<div id="container">
		<div id="content">
			<!-- add new button to add ticket -->
			<input type="button" value="Add Ticket"
				onclick="window.location.href='formAddTicket'; return false;"
				class="insert-button"
			/>
			<!-- add html table of ticket}/s here -->
			<table>
				<tr>
					<th>Ticket Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Seat Number</th>
					<th>Row</th>
					<th>Level</th>
					<th>Address</th>
					<th>Venue Name</th>
					<th>Barcode</th>
					<th>Status</th>
					<th>Event id</th>
					<th>Action</th>
				</tr>

				<!-- loop over and print the tickets -->
				<c:forEach var="tempTicket" items="${tickets}">
					
					<!-- update link with ticket id -->
					<c:url var="updateLink" value="/tickets/formUpdateTicket">
						<c:param name="ticketId" value="${tempTicket.ticketId}" />
					</c:url>
					<tr>
						<td>${tempTicket.ticketId}</td>
						<td>${tempTicket.firstName}</td>
						<td>${tempTicket.lastName}</td>
						<td>${tempTicket.email}</td>
						<td>${tempTicket.seatNumber}</td>
						<td>${tempTicket.row}</td>
						<td>${tempTicket.level}</td>
						<td>${tempTicket.address}</td>
						<td>${tempTicket.venueName}</td>
						<td>${tempTicket.barcode}</td>
						<td>${tempTicket.status}</td>
						<td>${tempTicket.eventId}</td>
						
						<td>
							<!-- update link -->
							<a class=insert-button href="${updateLink}">update</a>
					</tr>
				</c:forEach>
			</table>

		</div>
	</div>
</body>



</html>