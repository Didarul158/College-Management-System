<?php
session_start();
include '../service/config.php';
require_once '../service/db.php';
if(isset($_POST['bookname']) && !$_POST['bookname'] == ""){
    $book_name = $_POST['bookname'];


    //$id = $_SESSION['user2']['student_id'];
    $t_name = $_SESSION['user3']['t_name'];
    //$cname = trim($_REQUEST['cname']);
    //$sname = trim($_REQUEST['sname']);
    
    $sql = "INSERT INTO `t_selectbook` VALUES ('','{$t_name}','{$book_name}')";
    $result = mysqli_query($conn,$sql) or die("somthing wrong!");
    if($result){
        echo '<b id="msg" style="color:green">Books added successfully</b>';
    }
   
}else{
    echo '<b id="msg" style="color:red">input is empty</b>';
}
?>