<?php
	session_start();
	//print_r($_SESSION['user']);

	require_once('../service/functions.php');
	//require('db.php');
	
	$result= getGrade12Info();
	
?>

<!DOCTYPE html>
<html>
<head>
	<title>Grades</title>
</head>
<body>


            <center>

         <table border=1>
		 
		 <tr>
		      <td colspan=12><center><b>Grades</b></center></td>
		 
		 </tr>
		 
		 <tr>
		     <td><b><center>ID</center></b></td>
			 <td><center><b>Name</b></center></td>
			 
			
			 <td><center><b>Department</b></center></td>
			 <td><center><b>Subject</b></center></td>
			 <td><center><b>Class</b></center></td>
			 <td><center><b>Mark</b></center></td>
			 <td><center><b>Grade</b></center></td>
			
			
			  <td><center><b>Action</b></center></td>
		 
		 </tr>
		
		 <?php	while($row = mysqli_fetch_assoc($result)){ ?>
		 <tr>
		     <td><?=$row['s_id']?></td>
			 <td><?=$row['s_name']?></td>
			 <td><?=$row['dept']?></td>
			 <td><?=$row['subject']?></td>
			 <td><?=$row['class']?></td>
			 
			<td><?=$row['mark']?></td>
			<td><?=$row['grade']?></td>

			<td>
				<a href="ts_12updatecheck.php?edit_sid=<?=$row['s_id']?>">Edit</a> 
				<a href="ts_12deleted.php?s_id=<?=$row['s_id']?>" onclick="return confirm('Are you Sure?')">Delete</a> 
				 
			</td>
			
			
			
			 
		 
		 </tr>
		 <?php } ?>
			
			<tr>
			<td colspan=12><center><a href='Teacher_home.php'>Go Home</a></center></td>
			
			</tr>
		 </center>


