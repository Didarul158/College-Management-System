<?php
	session_start();
	if(!isset($_SESSION['p_name'])){  
		header("location: login.php");
	}
	//print_r($_SESSION['user']);
	require_once('../service/functions.php');
	//require('db.php');
	$result = getParentCreateComplaint();
?>
<!DOCTYPE html>
<html>
<head>
	<title> Create Complint Page</title>
</head>
<body>
<center>
<table  border="1" >

       <tr align="center">

	   <td>
		<h1 align="center"> Welcome! </h1>

      	
			
			<a href="uploadedfile.php">Create Complaint here</a><br>

		
		</td>
		</tr>
	
		
	   <a href="parent_home.php">Go home</a><br>
		<a href="logout.php"><b>Logout</b></a>
	</center>
</body>
</html>