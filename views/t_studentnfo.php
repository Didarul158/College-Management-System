<?php
	session_start();
	//print_r($_SESSION['user']);

	require_once('../service/functions.php');
	//require('db.php');
	
	$result1= getStudentInfo();
	
?>

<!DOCTYPE html>
<html>
<head>
	<style>

<style>
#table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#table td, #table th {
  border: 1px solid #ddd;
  padding: 8px;
}

#table tr:nth-child(1){background-color: green;}
#table tr:nth-child(even){background-color: #ddd;}


#table tr:hover {background-color: #ddd;}

#table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</style>
	<title>Student Info</title>
</head>
<body>


            <center>

         <table border=1 id="table">
		 
		 <tr>
		      <td colspan=12><center><b>Manipulate Student Details</b></center></td>
		 
		 </tr>
		 
		 <tr>
		     <td><b><center>ID</center></b></td>
			 <td><center><b>Name</b></center></td>
			 <td><center><b>Password</b></center></td>
			 <td><center><b>Email</b></center></td>
			 <td><center><b>Date of Birth</b></center></td>
			 <td><center><b>Department</b></center></td>
			 <td><center><b>Gender</b></center></td>
			 <td><center><b>Class</b></center></td>
			 <td><center><b>Adress</b></center></td>
			 <td><center><b>Profile Picture</b></center></td>
			
			
			  
		 
		 </tr>
		
		 <?php	while($row = mysqli_fetch_assoc($result1)){ ?>
		 <tr>
		     <td><?=$row['s_id']?></td>
			 <td><?=$row['s_name']?></td>
			 <td><?=$row['s_password']?></td>
			 <td><?=$row['email']?></td>
			 <td><?=$row['dob']?></td>
			 <td><?=$row['dept']?></td>
			 <td><?=$row['gender']?></td>
			 <td><?=$row['class']?></td>
			 <td><?=$row['adress']?></td>
			 <td><img width="60px" src="../upload/<?=$row['photo']?>"></td>
			
			
			
			 
		 
		 </tr>
		 <?php } ?>
			
			<tr>
			<td colspan=12><center><a href='Teacher_home.php'>Go Home</a></center></td>
			
			</tr>
		 </center>
		 