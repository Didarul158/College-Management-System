<?php
	session_start();
	//print_r($_SESSION['user']);
	require_once('../service/functions.php');
	//require('db.php');
	$result = getNotice1();
?>


<!DOCTYPE html>
<html>
<head>

<style>
body {
  background-color: Orange;
}
</style>
	<title>Notice1</title>
</head>
<body>
<center>
<table  border="1" width="60%">

       <tr align="center">

	   <td>
		

		<b>From:</b>GOVT. SCIENCE COLLEGE
		<br>
		<b>Subject:</b>Make-up Class
		<br>
		<b>Details:</b><br>
	    		<?php	while($row = mysqli_fetch_assoc($result)){ ?>

                    <?=$row['notice']?>

		<?php } ?>
        <br>
		<a href="notice.php">Back</a>
		</td>
		</tr>
	   </table>
	</center>
</body>
</html>