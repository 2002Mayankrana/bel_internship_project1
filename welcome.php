<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <img src="BEL-Reaches-Out-To-Potential-Investors-In-The-Middle-East.jpg" alt="BHARAT ELECTRONICS LIMITED" >
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; padding: 50px ; }
    
        table {border-collapse: collapse; width: 100%; padding: 50px;
        }
        

        th, td {padding: 8px;text-align: left;border-bottom: 1px solid #DDD;}

        tr:hover {background-color: #D6EEEE;}
    </style>
</head>
<body>
    <h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our site.</h1>
    <h2>MACHINE TEST TABLE</h2>
<p>Move the mouse over the table rows to see the details.</p>

<table>
  <tr>
    <th>MACHINES</th>
    <th>NO. OF TESTS</th>
    <th>PASSED</th>
    <th>FAILED</th>
    <th>EFFICIENCY</th>
    <th>DETAIL</th>
  </tr>
  <tr>
    <td>Machine 1</td>
    <td>8</td>
    <td>4</td>
    <td>4</td>
    <td>50%</td>
    <td onclick="location.href='machine1.php'"  style="background-color: rgba(150, 212, 212, 2);"> See</td></td>
  </tr>
  <tr>
  <td>Machine 2</td>
    <td>11</td>
    <td>8</td>
    <td>3</td>
    <td>72%</td>
    <td onclick="location.href='machine2.php'" style="background-color: rgba(150, 212, 212, 2);"> See</td></td>
  </tr>
  <tr>
  <td>Machine 3</td>
    <td>6</td>
    <td>5</td>
    <td>1</td>
    <td>83%</td>
    <td onclick="location.href='machine3.php'"style="background-color: rgba(150, 212, 212, 2);"> See</td></td>
  </tr>
  
</table>

    <p>
        <br><br>
        <a href="reset-password.php" class="btn btn-warning" >Reset Your Password</a>
        <a href="logout.php" class="btn btn-danger ml-3">Sign Out of Your Account</a>
    </p>
</body>
</html>