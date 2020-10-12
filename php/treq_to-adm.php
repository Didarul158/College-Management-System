<?php
session_start();
include '../service/config.php';
if(isset($_POST['Request']) && !$_POST['Request'] == ""){
    $Request = $_POST['Request'];


    $id = $_SESSION['user3']['t_id'];
     $name = $_SESSION['user3']['t_name'];
    
    $sql = "INSERT INTO `teacher_update_request`(`t_id`, `t_name`, `t_update_msg`) VALUES ('$tid','$tname','$tRequest')";
    $result = mysqli_query($conn,$sql) or die("somthing woring!");
    if($result){
        echo '<b tid="msg" style="color:green">Your request send successfully</b>';
    }
   
}else{
    echo '<b tid="msg" style="color:red">your request is empty</b>';
}
?>