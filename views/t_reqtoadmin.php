<?php   
    session_start();
    include '../service/config.php';
   
?>

<html>
    <head>
        <title>Request Admin</title>
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
            
       <legend><h1><span>Request To Admin</span></h1></legend>    
    

    <strong> If you want to do any Update/Delete</strong><br>
    <br>
    <textarea name="Request" id="Request" cols="30" rows="5"></textarea><br>
    <input class="button" type="submit" id="submit" name="SubmittoAdmin"><br>
                        <br>
                        <b id="msg"></b>
                        <br>

    <a href="Teacher_home.php">Teacher Page</a>
    
    </center>
    

        </fieldset>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
            $('#submit').on('click',function(e){
                var category1id = $('#Request').val();
        
                    $.ajax({
                        type: 'POST',
                        url: '../php/treq_to_adm.php',
                        data: 'Request='+category1id,
                        success: function(html){
                            $('#msg').html(html);
                        }
                    });
                    $('#Request').val("");
                
            });
    });
    
    </script>
    </body>
</html>