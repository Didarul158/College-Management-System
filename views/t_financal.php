<?php   
    session_start();
    include '../service/config.php';
   
?>

<?php
 
// Attempt select query execution
$id = $_SESSION['user3']['t_id'];
$sql = "SELECT * FROM teacher_financial WHERE t_id = '$id'";
echo "<html>
    <head>


        <title>Finance Info</title>
        <style>
body {
  background-color: MediumSeaGreen;
}
</style>


    </head>
    <center>
    <fieldset>
        
        <legend><h1>Your Financial Info</h1></legend>";
if($result = mysqli_query($conn, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table border='1' width='400px' cellspacing='0'>";
            echo "<tr>";
            
                echo "<th>Salary</th>";
                echo "<th>Bonus</th>";
                echo "<th>Withdraw</th>";
                echo "<th>Balance</th>";
                
            
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" ."<center>". $row['salary'] ."</center>". "</td>";
                echo "<td>" ."<center>". $row['bonus'] ."</center>"."</td>";
                echo "<td>" ."<center>". $row['withdraw'] ."</center>". "</td>";
                echo "<td>" ."<center>".$row['balance'] . "</center>"."</td>";
            echo "</tr>";
        }
        echo "</table>";
        echo "</fieldset>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
}
 echo "<br>";
 echo "<br>";
 echo "<center><a href='Teacher_home.php'><b>Teacher Page</b></a></center><br>";
// Close connection
mysqli_close($conn);
?>