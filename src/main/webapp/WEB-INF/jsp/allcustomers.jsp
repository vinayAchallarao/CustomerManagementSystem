<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<title>Welcome Page</title>
</head>
<body class="container">

	<h2 class="text-center">Customer Management System</h2>
	<hr />
	<a href="/" class="btn mb-2 btn-info">Home</a>
	<c:if test="${customers.size()!=0}">
		<table class="table table-bordered">
			<tr>
				<td>Customer ID</td>
				<td>Customer Name</td>
				<td>Customer City</td>
				<td>Customer Mobile</td>
				<td></td>
			</tr>

			<c:forEach items="${customers}" var="customer">
				<tr>
					<td><c:out value="${customer.cid}"></c:out></td>
					<td><c:out value="${customer.cname}"></c:out></td>
					<td><c:out value="${customer.ccity}"></c:out></td>
					<td><c:out value="${customer.cmobile}"></c:out></td>
					<td><a href="updateCustomer/${customer.cid}" class="btn btn-primary">Update</a></td>
					<td><a href="" class="btn btn-danger">Delete</a></td>
				</tr>

			</c:forEach>

		</table>

	</c:if>

	<c:if test="${customers.size()==0 }">
		<h3 class="text-success text-center">Sorry, No Customers are
			available</h3>
	</c:if>




	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>


</body>
</html>