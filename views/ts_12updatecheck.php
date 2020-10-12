
<?php
	session_start();
	//print_r($_SESSION['user']);

	require_once('../service/functions.php');
	//require('db.php');
	
	$result= getGrade12InfoUpdate();
	
	
	
?>
 
 
 
 <!DOCTYPE html>
				<html>
				<head>
				       <title>Student Grade</title>
				</head>
				 <?php	while($row = mysqli_fetch_assoc($result)){ ?>
				<body>
				<br/>
				
				</br>
				
				
				
				
				
				
				<form action="../php/ts_12checkedgrade.php" method="post" enctype="multipart/form-data">
				<center>
				
				<fieldset>
				
				<legend><b>Student Grade</b></legend>
				
				<table border=0>
				
				
				<tr>
				<td>
				Student Name <br/>
                      <input type="text" name="name" value="<?=$row['s_name']?>">
					  
                </td>					  
				</tr>
				
				
				
				<tr>
				<td>
				Department <br/>
                      <input type="text" name="dept" value="<?=$row['dept']?>">
					
					  
                </td>					  
				</tr>
				
				<tr>
				<td>
				Subject <br/>
                      <input type="text" name="subject" value="<?=$row['subject']?>">
					    
					  
                </td>					  
				</tr>
				
				
				<tr>
				<td>
				Class <br/>
                      <input type="number" name="class" value="<?=$row['class']?>">
					    
					  
                </td>					  
				</tr>
				
				<tr>
				<td>
				Mark <br/>
                      <input type="number" name="mark" value="<?=$row['mark']?>">
					    
					  
                </td>					  
				</tr>
				
				
				<tr>
				<td>
				Grade <br/>
                      <input type="text" name="grade" value="<?=$row['grade']?>">
					    
					  
                </td>					  
				</tr>
				
			    
				
				  
			 <input type="hidden" name="s_id" value="<?=$row['s_id']?>">
			
			 <br/>
			 <tr>
			 
				
				<td><input type="submit" name="submit52"  value="Update Data" onclick="return confirm('Are you Sure?')"></td>
				
				
				
				
			</tr>
			
			<tr>
			<td><a href='ts_12grade.php'>Return</a></td>
			
			</tr>
			
			
			
				
				</table>
				
				</center>
				
				</fieldset>
				
				</form>
				 <?php } ?>
			</body>
				</html>