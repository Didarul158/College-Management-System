<?php
	session_start();
	session_regenerate_id(true);
	//print_r($_SESSION['user']);
	include('../service/db.php');
	
	?>	
	


<!DOCTYPE html>
<html>
<head>
	<style>
body {
  background-color: MediumSeaGreen;
}
</style>
	<title>My profle</title>
</head>
<body>
<br/>
<br/>
<br/>
<br/>
<br/>
            <center>

         <table border=1>
		 
		 <tr>
		      <td colspan=9><center><b>MY profile</b></center></td>
		 
		 </tr>
		 
		 <tr>
		     <td>ID</td>
			 <td>Name</td>
			 <td>Password</td>
			 <td>Email</td>
			 <td>Date of Birth</td>
			 <td>Blood Group</td>
			 <td>Gender</td>
			 <td>Photo</td>
			 <td>Action</td>
			
			 
		 
		 </tr>
		 
		 <tr>
		     <td><?= $_SESSION['user3']['t_id']?></td>
			 <td><?= $_SESSION['user3']['t_name']?></td>
			 <td><?= $_SESSION['user3']['t_password']?></td>
			 <td><?= $_SESSION['user3']['email']?></td>
			 <td><?= $_SESSION['user3']['dob']?></td>
			 <td><?= $_SESSION['user3']['bldgrp']?></td>
			 <td><?= $_SESSION['user3']['gender']?></td>
			<td><img width="60px" src="../upload/<?=$_SESSION['user3']['photo']?>"></td>
			
			 <td>
				<a href="teacher_update.php?edit_tid=<?=$_SESSION['user3']['t_id']?>">Edit</a> 
				
			</td>
		 
		 </tr>
		
			
			
			
			
			<tr>
			<td colspan=9><center><a href='Teacher_home.php'>Go Home</a></center></td>
			               
			
			</tr>
		 
		 </table>
		 
		 </center>
		 
</body>
</html>