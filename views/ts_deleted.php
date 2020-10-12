<?php
	session_start();
	//print_r($_SESSION['user']);

	require_once('../service/functions.php');
	//require('db.php');
	$result = getAllGrades();
?>

<!DOCTYPE html>
<html>
<head>
	<title>Profiles</title>
</head>
<body>

		<a href="ts_grade.php"> Back</a>  | 
		<a href="logout.php"> logout</a> 
		<br/>
		<?php
		
		     if(isset($_REQUEST["deleted"])){
				 echo "Data has been deleted";
			 }
		?>
		<br/>
		
		<table border=1>
			<tr>
				<td>Student ID</td>
				<td>Student NAME</td>
				<td>Department</td>
				<td>Subject</td>
				<td>Class</td>
				<td>mark</td>
				<td>Grade</td>
				
				
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
			
		</tr>
	<?php } ?>

	</table>
</body>
</html>