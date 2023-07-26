<?php 

session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$user_name = $_POST['uname'];
		$password = $_POST['upswd'];
		

		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{

			//read from database
			
			$query = "SELECT uname1,upswd1 From register where uname1 = '$user_name' limit 1";
			$result = mysqli_query($con, $query);

			

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$user_data = mysqli_fetch_assoc($result);
					
					if($user_data['upswd1'] === $password)
					{

						$_SESSION['uname1'] = $user_data['uname1'];
						header("Location: http://localhost/tourism/index.html");
						//echo " Correct username or password!";
						die;
					}
				}
			}
			
			echo "wrong username or password!";
		}else
		{
			echo "wrong username or password!";
		}
	}

?>


