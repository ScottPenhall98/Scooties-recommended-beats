<?php

require('mysql_login.php');
$q = "SELECT * from Scooties_boops";
        
        // Run the query
$r = @mysqli_query($dbc, $q); 
$row = mysqli_fetch_array($r, MYSQLI_ASSOC);
session_start()

?>
<p>
    <?php
        echo $row["Song_name"]
    ?>
<p>