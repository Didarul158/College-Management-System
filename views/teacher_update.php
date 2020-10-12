<?php
	session_start();
	//print_r($_SESSION['user']);
	include('../service/db.php');
	
	?>	
 
 
 
 <!DOCTYPE html>
				<html>
				<head>
				       <title>Teacher Update</title>
				       <style>

				</head>
				 
				<body>
				<br/>
				<center>
				<img src="../views/new-account-icon-256x256.png" width="100px" height="100px"/>
				</center>
				</br>
				
				
				
				
				
				
				<form action="../php/t_updatecheck.php" method="post" enctype="multipart/form-data">
				<center>
				
				<fieldset>
				
				<legend><b>Teacher Update</b></legend>
				
				<table border=0>
				
				
				<tr>
				<td>
				Teacher Name <br/>
                      <input type="text" name="tname" value="<?= $_SESSION['user3']['t_name']?>">
					  
                </td>					  
				</tr>
				
				
				
				<tr>
				<td>
				Password <br/>
                      <input type="password" name="tpwd" value="<?= $_SESSION['user3']['t_password']?>">
					
					  
                </td>					  
				</tr>
				
				<tr>
				<td>
				Email <br/>
                      <input type="text" name="temail" value="<?= $_SESSION['user3']['email']?>">
					    
					  
                </td>					  
				</tr>
				
				<tr>
				<td>
				Date of Birth <br/>
                      <input type="date" name="tdob" value="<?= $_SESSION['user3']['dob']?>">
				
					   
                </td>					  
				</tr>
				
				 
				 <tr>
			 <td>
			    Blood Group <br/>
				</td>
				</tr>
				<tr>
				<td>
				<select name="tbloodGrp" id="tbldGrp">
							
							<option value="A+"<?php 
                         if($_SESSION['user3']['tbldgrp']=='A+')
                            {
	                   echo "selected";
                       }
                      ?>>A+</option>
							<option value="A-"<?php 
                         if($_SESSION['user3']['tbldgrp']=='A-')
                            {
	                   echo "selected";
                       }
                      ?>>A-</option>
							<option value="B+"
							<?php 
                         if($_SESSION['user3']['tbldgrp']=='B+')
                            {
	                   echo "selected";
                       }
                      ?>>B+</option>
							<option value="B-<?php 
                         if($_SESSION['user3']['tbldgrp']=='B-')
                            {
	                   echo "selected";
                       }
                      ?>">B-</option>
							<option value="O+"
							<?php 
                         if($_SESSION['user3']['tbldgrp']=='O+')
                            {
	                   echo "selected";
                       }
                      ?>>O+</option>
							<option value="O-"
							<?php 
                         if($_SESSION['user3']['tbldgrp']=='O-')
                            {
	                   echo "selected";
                       }
                      ?>>O-</option>
							<option value="AB+"<?php 
                         if($_SESSION['user3']['tbldgrp']=='AB+')
                            {
	                   echo "selected";
                       }
                      ?>>AB+</option>
							<option value="AB-"<?php 
                         if($_SESSION['user3']['tbldgrp']=='AB-')
                            {
	                   echo "selected";
                       }
                      ?>>AB-</option>
						</select>
						
					
			 
			 </td>
			 </tr>
				
				
				
				
				<tr>
				<td>Gender</td> 
				</tr>
				<tr>
				<td>Male<input type="radio" name="tgender" id="gen1" value="male"
				<?php 
              if($_SESSION['user3']['tgender']=='male')
                  {
	              echo "checked";
                  }
                 ?>>
				    Female<input type="radio" name="tgender" id="gen2" value="female"
					<?php 
              if($_SESSION['user3']['tgender']=='female')
                  {
	              echo "checked";
                  }
                 ?>>
					Others<input type="radio" name="tgender" id="gen3" value="others"
					<?php 
              if($_SESSION['user3']['tgender']=='others')
                  {
	              echo "checked";
                  }
                 ?>>
					</td>
					
			</tr>
				
				
				
				
				
				<tr>
			    <td>
				     Photo <br/>
				</td>
				</tr>
				
				<tr>
				<td><input type="file" name="tphoto" id="tphoto"></td>
			 
			 </tr>
				
				
			    
				
				  
			 <input type="hidden" name="t_id" value="<?= $_SESSION['user3']['t_id']?>">
			
			 <br/>
			 <tr>
			 
				
				<td><input type="submit" name="submit54"  value="Update Data" onclick="return confirm('Are you Sure?')"></td>
				
				
				
				
			</tr>
			
			<tr>
			<td><a href='t_profile.php'>Return</a></td>
			
			</tr>
			
			
			
				
				</table>
				
				</center>
				
				</fieldset>
				
				</form>
				
			</body>
				</html>