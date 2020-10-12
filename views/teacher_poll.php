<?php
	session_start();
	//print_r($_SESSION['user']);
	require_once('../service/functions.php');
	//require('db.php');
	$result = getpoll();
?>
<!DOCTYPE html>
<html>
<head>
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
#table tr:nth-child(odd){background-color: #ddd;}



#table tr:hover {background-color: #ddd;}

#table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
	

	<title>Poll</title>

	



</head>
<body>
	<form action="teacher_comments.php" method="post" >
<center>
<table  border="1" width="60%" id="table">


       <tr align="center">

	   <td>
		<h1 align="center"> Welcome! </h1>

		<b>Poll:</b><br>
		<?php while($row = mysqli_fetch_assoc($result)){ ?>

                    <?=$row['question']?>

		<?php } ?>

		<br>
		Do you recommanded it?<br>
       	
        <input type="radio" name="comments"  value="yes">Yes
	  <input type="radio" name="comments" value="no">No
		<br>
	

				
		
			
				
				<input class="button"  type="submit" name="submit"  value="Submit">
					<br>
			         <br>

		
		<a href="Teacher_home.php">Go home</a><br>
	
		<a href="logout.php"><b>Logout</b></a>
		</td>
		</tr>
	   </table>
	</center>
</body>
</html>