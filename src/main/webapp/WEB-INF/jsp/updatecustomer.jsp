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

<title>Update Customer Page</title>
</head>
<body class="container">

	<h2 class="text-center">Customer Management System</h2>
	<hr />

	
	<form action="/customer/updateCustomer" method="post">
		
		<div class="form-group">
			<label>Customer Name</label>
			<input class="form-control" name="cname" value="${customer.cname}"/>
		</div>
		
		<div class="form-group">
			<label>Customer Mobile</label>
			<input class="form-control" name="cmobile" value="${customer.cmobile}"/>
		</div>
		<div class="form-group">
			<label>Customer City</label>
			<select name="ccity" class="form-control" >
				<option value="">--Select City--</option>
				<option value="Hyderabad">Hyderabad</option>
					<option value="Secunderabad">Secunderabad</option>
					<option value="Vijayawada">Vijayawada</option> 
			</select>
		</div>
		<button class="btn btn-primary btn-outline">Update</button>
	</form>
	

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