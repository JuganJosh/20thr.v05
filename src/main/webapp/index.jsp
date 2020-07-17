<html>
<head>
<title>Bootstrap Example</title>
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
		<br>
		<a href="searchtrain.jsp"><button class="btn btn-warning">Search</button></a>

		<h2>Railway Booking</h2>
	</center>
	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">

				<form action="book.odc" method="post">

					<label>Name : </label> <input type="text" name="name"
						class="form-control" placeholder="Enter Your Name"> <label>Age
						: </label> <input type="text" name="age" class="form-control"
						placeholder="Enter Your Age"> <label>Address : </label>
					<textarea type="text" name="address" class="form-control"
						placeholder="Enter Your Address"></textarea>
					<label>Source : </label> <input type="text" name="source"
						class="form-control" placeholder="Enter Your Source"> <label>Destination
						: </label> <input type="text" name="destination" class="form-control"
						placeholder="Enter Your Desination"> <label>Date :
					</label> <input type="date" name="date" class="form-control"
						placeholder="Enter Your Date"> <br>
					<center>
						<input type="submit" value="Submit" class="btn btn-success">
					</center>

				</form>

			</div>
			<div class="col-4"></div>
		</div>
	</div>
</body>
</html>
