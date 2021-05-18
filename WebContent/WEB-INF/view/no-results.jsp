<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
<title>List of Tickets</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ticket-style.css" />
</head>


<body>
	<font color='red'>No Results! Try Search Again!</font>

	<div style=""></div>

	<p>
		<a href="${pageContext.request.contextPath}/tickets/list"
			class="button button1">Back</a>
	</p>
</body>

</html>