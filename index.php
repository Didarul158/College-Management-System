
<?php
	session_start();
?>

  <!DOCTYPE html>
					
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


#table tr:nth-child(odd){background-color: #ddd;}


#table tr:hover {background-color: #ddd;}

#table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
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

.button {background-color: #Green;} 
</style>
</style>
</head>
					                 	


	           <title>Login</title>
	         </head>
			 
			 <body>


			 
			 <form action="php/Logcheck.php" method="post">
			 <br/>
			 <br/>
			 <center> <img src="views/unnamed.png" width="100px" height="100px"/> </center>
			 <br/>
			 <br/>
			 
			 <center>
			
		
			 <fieldset>
			 <legend><b> Login</b></legend>
			 
			 
			 <table border="0" id="table">
			 
			 
			 
			 <tr>
			      <td>
				  User Name <br/>
				  <input type="text" name="name" value="">
				  
                  
	            
				  
				  
				  </td>
			 
			 
			 </tr>
			 <tr>
			 <td>
			    Password <br/>
				<input type="password" name="password" value="">
				
			 
			 </td>
			 </tr>
			 
			 </tr>
			
			 <td>
			    
			<input class="button" type="submit" name="submit1" value="Login">
				<br/>
				<center>
				<a href='views/Registration.php'>Register Admin</a>
				<a href='views/Parents1.php'>Register Parent</a>
				
				<br/>
				<a href='views/reg.php'>Register Student</a>
				 
				</center>
				 
			 
			 </td>
			 </tr>
			 
			 </html>