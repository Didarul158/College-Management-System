<?php

    
	include('../service/db.php');
	
	if(isset($_POST['submit52'])){
		$s_name = trim($_REQUEST['name']);
		$dept = trim($_REQUEST['dept']);
		$subject = trim($_REQUEST['subject']);
		$class = $_REQUEST['class'];
		$mark = $_REQUEST['mark'];
		$grade = $_REQUEST['grade'];
	
		
		$s_id= $_REQUEST['s_id'];
		
		
		

		
/*
		$sql2 = "select username from users where username='{$username}'";
		$result = mysqli_query($con, $sql2);
		$row = mysqli_fetch_assoc($result);
		if($row[]){
		}*/
        $conn = getConnection();
	if(!empty($_FILES['name'])){
		$sql= "UPDATE ts_12grade SET s_name='$s_name', dept='$dept',subject='$subject',class='$class',mark='$mark',
		        grade='$grade' WHERE s_id='$s_id'";
	}
	else{
		$sql= "UPDATE ts_12grade SET s_name='$s_name', dept='$dept',subject='$subject',class='$class',mark='$mark',
		        grade='$grade' WHERE s_id='$s_id'";
	}
		if(mysqli_query($conn, $sql)){
			header("location:../views/ts_12grade.php?edited");
		}else{
			echo "Error";
		}
	}
	?>