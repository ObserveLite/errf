<?php
	include_once('connect.php');

	$dbs = new database();
	$db=$dbs->connection();

	if(isset($_POST['clientlogin']))
	{
		$Username=$_POST['name'];
		$Password=$_POST['password'];

		if(empty($Username) || empty($Password))
		{
			header("location:../user/index.php?msg=Username and Password is required");exit;
		}
		else
		{
			if(strtoupper(substr(PHP_OS, 0, 3)) === 'WIN')
			{

				$mac = substr(exec('getmac'),0,17);
				user();
			}
			else
			{
				exec("/sbin/ifconfig eth0 | grep HWaddr", $output);
				$mac = substr($output[0],38);
				user();
			}
		}
	}
	else if (isset($_POST['usave']))
	{
		session_start();
		$old = $_POST['oldpass'];
		$npass = $_POST['npassword'];
		$cpass = $_POST['cpassword'];
		$email = $_SESSION['User']['Email'];

		if(empty($old))
		{

			header("location:../user/changepassword.php?msg=Old Password is required");exit;
		}
		else
		{

			$sql = mysqli_query($db,"select * from amvion where Password='$old' and Email='$email'");
			if(mysqli_num_rows($sql) > 0)
			{
				if(!empty($npass) && !empty($cpass))
				{
					if($npass == $cpass)
					{
						mysqli_query($db,"update amvion set Password='$npass' where Password='$old' and Email='$email'");
						header("location:../user/changepassword.php?id=Successfull...");exit;	
					}
					else
					{
						header("location:../user/changepassword.php?msg=New password and Confirm pssword do not match?");exit;
					}
					
				}
				else
				{
					header("location:../user/changepassword.php?msg=New Password And Confirm Password is required?");exit;
				}
			}
			else
			{
				header("location:../user/changepassword.php?msg=Old Password is Wrong!");exit;
			}
		}
	}
	else if (isset($_POST['save']))
	{
		session_start();
		$old = $_POST['oldpass'];
		$npass = $_POST['npassword'];
		$cpass = $_POST['cpassword'];
		$email = $_SESSION['User']['Email'];

		if(empty($old))
		{

			header("location:../changepassword.php?msg=Old Password is required");exit;
		}
		else
		{

			$sql = mysqli_query($db,"select * from amvion where Password='$old' and Email='$email'");
			if(mysqli_num_rows($sql) > 0)
			{
				if(!empty($npass) && !empty($cpass))
				{
					if($npass == $cpass)
					{
						mysqli_query($db,"update amvion set Password='$npass' where Password='$old' and Email='$email'");
						header("location:../changepassword.php?id=Successfull...");exit;	
					}
					else
					{
						header("location:../changepassword.php?msg=New password and Confirm pssword do not match?");exit;
					}
				}
				else
				{
					header("location:../changepassword.php?msg=New Password And Confirm Password is required");exit;
				}
			}
			else
			{
				header("location:../changepassword.php?msg=Old Password is Wrong!");exit;
			}
		}
	}
	else if(isset($_POST['submit']))
	{
		$Username=$_POST['name'];
		$Password=$_POST['password'];

		if(empty($Username) || empty($Password))
		{

			header("location:../index.php?msg=UserName and Password is required");exit;
		}
		else
		{
			// // reCAPTCHA validation
             if(isset($_POST['g-recaptcha-response']) && !empty($_POST['g-recaptcha-response'])) {

            //     // Google secret API
                $secretAPIkey = '6LedBq4oAAAAAAlK_iX8euTEO3U4TAF3S9gJx4M-';

            //     // reCAPTCHA response verification
                 $verifyResponse = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret='.$secretAPIkey.'&response='.$_POST['g-recaptcha-response']);

            //     // Decode JSON data
                $response = json_decode($verifyResponse);
                    if($response==true){
			$sql = mysqli_query($db,"select * from amvion where Email='$Username' AND Password='$Password' AND RoleId=1 ");

			if(mysqli_num_rows($sql) > 0)
			{
				$row = mysqli_fetch_assoc($sql);
				if(isset($_SESSION))
				{
					session_destroy();
				}
				session_start();
				$_SESSION['User'] = $row;
				$email = $_SESSION['User']['Email'];
				$roleid = $_SESSION['User']['RoleId'];

				date_default_timezone_set("Asia/Kolkata");
				$datetime = date("Y-m-d H:i:s");
				mysqli_query($db,"update amvion set LastLogin='$datetime' where Email='$email' ");
				$sqll = mysqli_query($db,"select * from role where RoleId='$roleid'");
				$ro = mysqli_fetch_assoc($sqll);
				
				$_SESSION['role'] = $ro;
				header('location:../home.php');exit;
			}
			else
			{
				header("location:../index.php?msg=Username and Password is Wrong!");
				exit;
			}
		}
	}
	else{
		header("location:../index.php?msg=Click The Recaptcha!!!");
				exit;
	}
}
}


	function user()
	{
		$db = $GLOBALS["db"];
		$Username = $GLOBALS["Username"];
		$Password = $GLOBALS["Password"];
		$mac = $GLOBALS["mac"];
		$sql = mysqli_query($db,"select * from amvion where Email='$Username' AND Password='$Password' AND StatusId=1 ");

		if(mysqli_num_rows($sql) > 0)
		{
			$row = mysqli_fetch_assoc($sql);
			if(isset($_SESSION))
			{
				session_destroy();
			}
			session_start();
			$_SESSION['User'] = $row;
			$email = $_SESSION['User']['Email'];
			$roleid = $_SESSION['User']['RoleId'];

			date_default_timezone_set("Asia/Kolkata");
			$datetime = date("Y-m-d H:i:s");
			$date = date("Y-m-d");
			mysqli_query($db,"update amvion set LastLogin='$datetime' where Email='$email'");
			$empid = $row['EmployeeId'];
			$sqll = mysqli_query($db,"select * from role where RoleId='$roleid'");
			$ro = mysqli_fetch_assoc($sqll);
			$_SESSION['role'] = $ro;

			$ldate = mysqli_query($db,"select * from dailyworkload where EmpId='$empid' and cast(LoginDate as date) = '$date'");
			if(mysqli_num_rows($ldate) > 0)
			{
				$dailyworkloadId = mysqli_fetch_assoc($ldate);
				$_SESSION['dailyid'] = $dailyworkloadId['DailyWorkLoadId'];
				header('location:../user/home.php');exit;
			}
			else
			{
				mysqli_query($db,"insert into dailyworkload values(null,'$empid','$datetime',null,null)");
				header('location:../user/home.php');exit;
			}
		}
		else
		{
			header("location:../user/index.php?msg=Username and Password is Wrong!");exit;
		}
	}
?>
