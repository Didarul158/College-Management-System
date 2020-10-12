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
  padding-top: 10px;
  padding-bottom: 10px;
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

.button {background-color: #Green;}


				       <title >Withdraw</title>

				   </style>
				</head>
				
				<body>
				<br/>
				<center>
				
				</center>
				</br>
				
				
				
				
				
				
				<form action="../php/t_paycheck.php" method="post" onsubmit="return check()" >
				<center>
				
				<fieldset>
				
				<legend><b>Withdraw</b></legend>
				
				<table  id="table" border=0>
					
				
				
				<tr>
				<td>
				Teacher RefID <br/>
                      <input  type="number" name="t_refid" id="t_refid">
					  
                </td>					  
				</tr>
				</tr>

				<tr>
				<td>
				Teacher Id:</br>
				<input type="number" name="tid" id="t_id"></td>
				
			    </td>
			</tr>
				
				
				<tr>
				<td>
				Teacher Name: <br/>
                      <input type="text" name="tname" id="tname">
					
					  
                </td>					  
				</tr>
				
				<tr>
				<td>
				Application Summary <br/>
                      <input type="text" name="appsummary" id="appsummary">
					 
					  
                </td>					  
				</tr>
				
				<tr>
				<td>
				Payment Amount <br/>
                      <input type="number" name="amount" id="amount">
					
					   
                </td>					  
				</tr>

				<tr>
				<td>
				 Trns. Refference ID <br/>
                      <input type="text" name="trefid" id="trefid">
					  
                </td>					  
				</tr>
				</tr>




				<tr>
				<td>Trans. Date:
			  	<input type="date" name="tdate" id="tdate" value=""></td>
			</tr>
				
				 
				
				
		
				
			
			
			 
				<tr>
				<td><input class="button" type="submit" name="submit"  value="Submit" onclick="ajax()">
					<input class="button" type="reset"  name="" value="Reset">
				


				</td>


			</tr>
				<br>
				
				
				
			
			
			<tr>
			<td><a href='Teacher_home.php'>Back</a></td>
			
			</tr>

			
			
			
				
				</table>
				
				</center>
				
				</fieldset>
				
				</form>
				
			</body>
				
				
				
				
				
				 <script>
 
          function check(){
			var t_refid= document.getElementById('t_refid').value;
			var t_id= document.getElementById('t_id').value;
			var tname=document.getElementById('tname').value;
			var appsummary=document.getElementById('appsummary').value;
			var amount=document.getElementById('amount').value;
			var trefid=document.getElementById('trefid').value;
			var tdate=document.getElementById('tdate').value;
			
			if(t_refid=="")
		{
			alert("Please Enter Teacher Ref. Id");
			return false;
			
		}
		
	
		else if(t_id=="")
		{
			alert("please given tid");
			
			return false;
			
		}
		
		
		else if(tname=="")
		{
			alert("Teacher name Cannot be Empty!!!");
			return false;
			
		}

		else if(appsummary=="")
		{
			alert("Application Summary Cannot be Empty!!!");
			return false;
			
		}
		else if(amount=="")
		{
			alert("Amount Cannot be empty");
			return false;
			
		}
		else if(trefid=="")
		{
			alert("Transation Ref. Id Cannot be empty");
			return false;
			
		}
		
		else if(tdate=="")
		{
			alert("Transation date is not given!!!");
			return false;
			
		}
		
	
		else{
			return true;
		}
	
		
		
		
		
		}
        	
		
	
		 </script>
		 
		 <script type="text/javascript">
		         function ajax(){
						var t_refid= document.getElementById('t_refid').value;
			var t_id= document.getElementById('t_id').value;
			var tname=document.getElementById('tname').value;
			var appsummary=document.getElementById('appsummary').value;
			var amount=document.getElementById('amount').value;
			var trefid=document.getElementById('trefid').value;
			var tdate=document.getElementById('tdate').value;
					  var url="t_paycheck.php";
					  
					  var vars="Teacher Ref. Id: "+t_refid+"tid: "+t_id+" Teacher Name:"+tname+" Application Summary:"+appsummary+" Amount:"+amount+" Trans Ref. Id:"+trefid+" Transation Date:"+tdate;
					  hr.open("POST",url,true);
					  hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
					  hr.onreadystatechange = function() {
	                  if(hr.readyState == 4 && hr.status == 200) {
		            var return_data = hr.responseText;
			        document.getElementById("status").innerHTML = return_data;
	    }
    }
   
                hr.send(vars); 
                document.getElementById("status").innerHTML = "processing...";
					 
				 }
				 
				  </script>
					
				
				</html>
				
				