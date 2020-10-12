<?php   
    session_start();
    include '../service/config.php';
    
?>

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

</style>



        <title  >Teachers portal</title>
        

    </head>
<center>
<table border="1" width="700px" id="table">

       <img src="../image/t_portal.jpg" width="300px" height="100px"/>
        
        <h1>Welcome to Teacher Portal ! <?= $_SESSION['user3']['t_name']?></h1>
    

        <tr>
            <th colspan="2"><br><h1><i><strong>Teacher Menu</strong><br></h1></i></h1></th>
            
        </tr>
        <tr>
            <th colspan="2"><a href="t_profile.php"><h2><strong><br>Teacher Profile<br></strong></a></h2></th>
            
        </tr>

        <tr>
            <td><center><a href="t_studentnfo.php"><b>Student Info</b></a><br><br></center> </td>
            <td colspan="2">
                <center><h3><a href="../views/teacher_poll.php"><b>Poll Answer</b></a></h3></center>
                
            
           
        </td>          
        </tr>
        <tr>
            <td>
                <center><a href="creategrade.html"><b> Upload Grades </b></a><br><br></center>
            </td>
           
            <td>
               <center><a href="t_financal.php"><b>Financal Info</b></a><br><br></center> 
            </td>
        </tr>

        <tr>
            <td>
                <center><a href="t_classroutine.php"><b>Class Routine</b></a><br><br></center>
                
            </td>
            <td>
                <center><a href="t_withdraw.php"><b>Withdraw Money </b></a><br><br></center>
                
            </td>
        </tr>        

        <tr>
            <td>
                <center><a href="t_exmroutine.php"><b>Exam Schedule</b></a><br><br></center>
                
            </td>
            <td>
                <center><a href="t_reqtoadmin.php"><b>Update/Delete Request</b></a><br><br></center>
                
            </td>
        </tr>


        <tr>
            <td><center><a href="t_library.php"><b>Registered Book's</b></a><br><br></center>
                
            </td>
            <td><center><a href="upload_tnote.php"><b>Upload Notes</b></a><br><br></center>
                
            </td>
        </tr>


        <tr>
            <td>
                <center><a href="s_contacts.php"><b>Contact Student</b></a><br><br></center>
                
            </td>
            <td>
                <center><a href="t_notice.php"><b>Notices</b></a><br><br></center>
                
            </td>
        </tr>

       

    <tr >
        <td  colspan="2"><center><br><a href="logout.php"><b>Log Out</b></a></center><br> </td>
    </tr>
    
    
    
    </center>
</table>
    

</html>
