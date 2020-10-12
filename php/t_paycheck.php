
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-color: MediumSeaGreen;
}
</style>

</head>
</html>



<?php

    session_start();
	include('../service/db.php');


	
	if(isset($_POST['submit'])){
		$t_refid = ($_REQUEST['t_refid']);
		$tid= trim($_REQUEST['tid']);
	    $tname = $_REQUEST['tname'];
		$appsummary = $_REQUEST['appsummary'];
		$amount = $_REQUEST['amount'];
		$trefid = $_REQUEST['trefid'];
		$tdate = $_REQUEST['tdate'];
	
        $conn = getConnection();
		$sql = "insert into t_withdraw VALUES('{$t_refid}','{$tid}','{$tname}','{$appsummary}','{$amount}','{$trefid}','{$tdate}')";
		if(mysqli_query($conn, $sql)){
			echo "Withdraw Done!";
			echo "<br>";
		}else{
			echo "Error";
			echo "<br>";
		}
	}
	?>
	
	<?php

	$t_refid = $_POST['t_refid'];
	$tid = $_POST['tid'];
	$tname = $_POST['tname'];
	$appsummary = $_POST['appsummary'];
	$amount = $_POST['amount'];
	$trefid = $_POST['trefid'];
	$tdate = $_POST['tdate'];
	
	
	sleep(5);
	echo "Teacher Ref. Id: ".$t_refid; 
	echo "<br>";
	echo "Teacher Id: ".$tid; 
	echo "<br>";
	echo "Teacher Name: ".$tname; 
	echo "<br>";
	echo "Application Summary: ".$appsummary;  
	echo "<br>";
	echo "Amount: ".$amount; 
	echo "<br>";
	echo "Transation Ref. Id: ".$trefid;
	echo "<br>";
    echo "Transation Date: ".$tdate;
	echo "<br>";

	//echo "Photo: ".$photo; 
?>
	