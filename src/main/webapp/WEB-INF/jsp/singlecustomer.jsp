<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

	<form action="" method="post">
		<label>Customer ID</label> <input class="form-control " name="cid">
		<button class="btn btn-primary mt-2">Submit</button>
		<button class="btn btn-danger mt-2" type="reset">Cancel</button>
	</form>
	<a href="/" class="btn btn-info mt-2">Home</a>
	<hr />

	<c:if test="${customer!=null}">
		<h4>Customer Details</h4>
		<h4>
			Customer ID :
			<c:out value="${customer.cid}" />
		</h4>
		<h4>
			Customer Name :
			<c:out value="${customer.cname}" />
		</h4>
		<h4>
			Customer City :
			<c:out value="${customer.ccity}" />
		</h4>
		<h4>
			Customer Mobile :
			<c:out value="${customer.cmobile}" />
		</h4>
	</c:if>

	<c:if test="${error!=null}">
		<h4 class="text-primary"><c:out value="${error}"/></h4>
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