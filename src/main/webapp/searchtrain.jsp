<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searching Train</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<center>
		<h2>Train Search</h2>
	</center>
	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">

				<form action="train.odc" method="post">
					<label>Search : </label> <input type="text" name="name"
						class="form-control" placeholder="Enter Your Train Name">
					<br>

					<center>
						<input type="submit" value="Search" class="btn btn-success">
					</center>
				</form>
				<center>
					<h4>${name}</h4>
					<h4>${trainName}</h4>
					<h4>${result}</h4>
				</center>
			</div>
			<div class="col-4"></div>
		</div>
	</div>
</body>
</html>