<?php

$fullname = $_POST['name'];
$email  = $_POST['email'];
$people = $_POST['people'];
$booktime = $_POST['time'];
$bookdate = $_POST['date'];
$phonenumber =$_POST['number'];




if (!empty($bookdate) || !empty($booktime) || !empty($people) || !empty($phonenumber) )
{

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "tourism";



// Create connection
$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);

if (mysqli_connect_error()){
  die('Connect Error ('. mysqli_connect_errno() .') '
    . mysqli_connect_error());
}
else{
  $SELECT = "SELECT email From booking Where email = ? Limit 1";
  $INSERT = "INSERT Into booking (fullname , email ,people, booktime, bookdate,phonenumber)values(?,?,?,?,?,?)";

//Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $email);
     $stmt->execute();
     $stmt->bind_result($email);
     $stmt->store_result();
     $rnum = $stmt->num_rows;

     //checking username
      if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("ssssss", $fullname,$email,$people,$booktime,$bookdate,$phonenumber);
      $stmt->execute();
      echo "New record inserted sucessfully";
     } else {
      echo " Already PACKAGE IS BOOKED using this email";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "All field are required";
 die();
}
?>