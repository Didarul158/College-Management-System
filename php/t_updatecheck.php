<?php

    session_start();
	include('../service/db.php');
	
	if(isset($_POST['submit54'])){
		$t_name = trim($_REQUEST['tname']);
		$t_password = trim($_REQUEST['tpwd']);
		$t_email = trim($_REQUEST['temail']);
		$t_dob = $_REQUEST['tdob'];
		$t_bldgrp = $_REQUEST['tbloodGrp'];
		$t_gender = $_REQUEST['tgender'];
		
		
		$photo=$_FILES['photo']['tname'];
		$avatar_tmpName=$_FILES['tphoto']['tmp_name'];
		$location="../upload/";
		move_uploaded_file($avatar_tmpName,$location."$photo");
		
		$a_id= $_REQUEST['t_id'];
		
		
		

		
/*
		$sql2 = "select username from users where username='{$username}'";
		$result = mysqli_query($con, $sql2);
		$row = mysqli_fetch_assoc($result);
		if($row[]){
		}*/
        $conn = getConnection();
	if(!empty($_FILES['photo']['name'])){
		$sql= "UPDATE teacher SET t_name='$t_name', t_password='$t_password',email='$email',dob='$dob',bldgrp='$bldgrp',
		        gender='$gender',photo='$photo' WHERE t_id='$t_id'";
	}
	else{
		$sql= "UPDATE teacher SET t_name='$t_name', t_password='$t_password',email='$email',dob='$dob',bldgrp='$bldgrp',
		        gender='$gender' WHERE t_id='$t_id'";
	}
		if(mysqli_query($conn, $sql)){
			header("location:../views/t_profile.php?edited");
		}else{
			echo "Error";
		}
	}
	?>