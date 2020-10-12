<?php   
    session_start();
    include '../service/config.php'; 
  
?>


<html>
    <head>
        <title>Library</title>
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
        
        <legend><h1><span>Regestered Boooks In Library</span></h1></legend>
        <form id="bookFrom">
  <input list="book" name="b_name" id="bookname">
  <datalist id="book">
  <?php
  $sql1 = "SELECT * FROM book";
  $result1 = mysqli_query($conn,$sql1) or die("book query faild!");
    if($result1){
        while($row1 = mysqli_fetch_assoc($result1)){
            echo '<option value="'.$row1['b_name'].'">';
        
        }
    }
  ?> 
  </datalist>
  <input class="button" type="submit" id="submit1" value="Add">
</form>   

    <div id="regBook">
    
    
    </div>


    <p id="msg"></p>

        
                    <br>
                    <br>
    <a href="Teacher_home.php">Teacher Page</a>
    </center>
    

    </fieldset>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){


        function Tbookload(){

                    $.ajax({
                        url: '../php/t_regbookadd.php',
                        type: 'POST',
                        success: function(data){
                            $('#regBook').html(data);
                        }
                    });           
        }
             
        Tbookload();

            $('#submit1').on('click',function(e){
                e.preventDefault();
                var category1id = $('#bookname').val();
        
                    $.ajax({
                        url: '../php/t_bookadd.php',
                        type: 'POST',
                        data: {bookname:category1id},
                        success: function(html){
                            Tbookload();
                            $('#msg').html(html);
                            $("#bookFrom").trigger("reset");
                        }
                    });
                
            });

            $(document).on("click","#deleteBtn",function(){
                var BookId = $(this).data("id");
                $.ajax({
                        url: '../php/t_delbook.php',
                        type: 'POST',
                        data: {id:BookId},
                        success: function(html){
                            Tbookload();
                            $('#msg').html(html);
                        }
                    });

            })
        
               
                    
                
            
    });
    
    </script>

 </body>   
</html>