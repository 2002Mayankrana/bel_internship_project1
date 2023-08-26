<?php

$user = 'root';
$password = '';

// Database 
$database = 'bel';

// Server is localhost 
$servername='localhost';
$mysqli = new mysqli($servername, $user,
$password, $database);
 
// Checking for connections
if ($mysqli->connect_error) {
    die('Connect Error (' .
    $mysqli->connect_errno . ') '.
    $mysqli->connect_error);
}
 
// SQL query to select data from database
$sql = " SELECT * FROM machine2 ";
$result = $mysqli->query($sql);
$mysqli->close();
?>
<!-- HTML code to display data in tabular format -->
<!DOCTYPE html>
<html lang="en">
 
<head>
    <meta charset="UTF-8">
    <title>Machine-2 Detail</title>
    <!-- CSS FOR STYLING THE PAGE -->
    <style>
        body{text-align: center;}
        table {
            margin: 0 auto;
            font-size: large;
            border: 1px solid black;
        }
 
        h1 {
            text-align: center;
            color: #006600;
            font-size: xx-large;
            font-family: 'Gill Sans', 'Gill Sans MT',
            ' Calibri', 'Trebuchet MS', 'sans-serif';
        }
 
        td {
            background-color: #E4F5D4;
            border: 1px solid black;
        }
 
        th,
        td {
            font-weight: bold;
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
 
        td {
            font-weight: lighter;
        }
    </style>
</head>
 
<body>
    <section>
    <img src="BEL-Reaches-Out-To-Potential-Investors-In-The-Middle-East.jpg" alt="BHARAT ELECTRONICS LIMITED" >
        <h1>Machine-2 Details</h1>
        <!-- TABLE CONSTRUCTION -->
        <table>
            <tr>
                <th>Serial no.</th>
                <th>Test name</th>
                <th>Result</th>
                
            </tr>
            <!-- PHP CODE TO FETCH DATA FROM ROWS -->
            <?php
                // LOOP TILL END OF DATA
                while($rows=$result->fetch_assoc())
                {
            ?>
            <tr>
                <!-- FETCHING DATA FROM EACH
                    ROW OF EVERY COLUMN -->
                <td><?php echo $rows['id'];?></td>
                <td><?php echo $rows['test'];?></td>
                <td><?php echo $rows['result'];?></td>
                
            </tr>
            <?php
                }
            ?>
        </table>
    </section>
</body>
 
</html>