<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<title>Welcome Page</title>
</head>
<body class="container">
	<h2 style="text-align: center;">Customer Registration Page</h2>
	<hr />


	<form:form modelAttribute="customer" action="saveCustomer"
		method="post">


		<div class="form-group">
			<label>Customer Name</label>
		</div>
		<div>
			<form:input class="form-control" path="cname" />
		</div>
		<div>
			<b class="text-danger"><form:errors path="cname" /></b>
		</div>
		<div>
			<label>Customer Mobile</label>
		</div>
		<div>
			<form:input class="form-control" path="cmobile" />
		</div>
		<div>
			<b class="text-danger"><form:errors path="cmobile" /></b>
		</div>
		<div>
			<label>Customer City</label>
		</div>
		<div>
			<form:select path="ccity" class="form-control">
				<form:option value="">--Select Your City--</form:option>
				<form:options items="${cities}" />

			</form:select>
		</div>
		<div>
			<b class="text-danger"><form:errors path="ccity" /></b>
		</div>
		<button class="btn btn-primary mt-2">Register</button>

	</form:form>
	<a href="/" class="btn btn-info mt-2">Home</a>

	<hr />

	<c:if test="${savedcustomer!=null}">
		<h4 style="text-align: center; color: green;">
			Dear,
			<c:out value="${savedcustomer.cname}" />
			, Your Registration is Success!
		</h4>
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