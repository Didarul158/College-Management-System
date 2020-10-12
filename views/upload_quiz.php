<?php   
    session_start();
    include '../service/config.php';
<?php
$cookie_name = "user";
$cookie_value = "Alex Porter";
setcookie($cookie_name, $cookie_value, time() + 7200, "/");
?>
   

?>


<!DOCTYPE html>
<html>
 <head>

        <title>Upload Question</title>
        <style>
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
</head>
<body>
     <center>
<fieldset>
    
    

        
        <legend><h2>Upload Your questions Here</h2></legend>
        
        <br>
        <br>
        
        
<form action="../php/t_quizupload.php" method="post" enctype="multipart/form-data" >
    Select file to upload:
    <input class="button" type="file" name="fileToUpload" id="fileToUpload" >
    <input class="button" type="submit" value="Upload" name="submit">
</form>

        <br>
        <br>
        <?php 
             if(isset($_GET["success"])){

                  if($_GET["success"]){
                       echo '<b style="color:green;">File successfully Upload</b>';
                  }else{
                    echo '<b style="color:red;">File upload faild, file size must me 10mb or lower!</b>';
                  }
             }
             
             ?>
        <br>
<a href="Teacher_home.php">Teacher Page</a>
    </center>

    
</fieldset>






   



</body>
</html>