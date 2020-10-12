<?php
include '../service/config.php';
if(isset($_POST['submit'])){

    if(!$_FILES['fileToUpload']['name'] == ""){
        $errors = array();
    $name1 = $_FILES['fileToUpload']['name'];
    $tmp_name = $_FILES['fileToUpload']['tmp_name'];
    $file_type = $_FILES['fileToUpload']['type'];
    $file_size = $_FILES['fileToUpload']['size'];
    $name = uniqid().$name2;

    if(!isset($_COOKIE[$cookie_name])) {
     echo "Cookie named '" . $cookie_name . "' is not set!";
} else {
     echo "Cookie '" . $cookie_name . "' is set!<br>";
     echo "Value is: " . $_COOKIE[$cookie_name];
}

    
    if($file_size > 2097152*5){
        header("location: ../views/upload_quiz.php?success=0");
        $errors[] = "File size must me 10mb or lower!";
    }else{
        move_uploaded_file($tmp_name,"../t_quiz-file/".$name);
        header("location: ../views/upload_quiz.php?success=1");
    }
    
    }else{
        header("location: ../views/upload_quiz.php");
    } 
}else{
    header("location: ../views/upload_quiz.php");
}

?>