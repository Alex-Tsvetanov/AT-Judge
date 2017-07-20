<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");
    $valid = true;

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	$sql = "SELECT * FROM Users WHERE `Username`=\"{$_REQUEST['Username']}\" OR `Email`=\"{$_REQUEST["Email"]}\"";
	$result = $conn->query($sql);
	$num_of_users = $conn->query("SELECT * FROM Users")->num_rows;

	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc()) 
		{
			if ($row["Username"] == $_REQUEST["Username"] || $row["Email"] == $_REQUEST["Email"])
			{
				$valid = false;
				break;
			}
			//echo $row["ID"] . " " . $row["Username"]. " " . $row["Password"] . " " . $row["Email"] . " ". $row["Name"] . "<br>";
		}
	} 
	unset($conn);


	if ($valid)
    {
		file_put_contents("php://stdout", "\nPassword: " . $_REQUEST['Password'] . "\n");
		$conn = new MySQL ($dbname);

		$sql  = 'INSERT INTO `Users` (`ID`, `Username`, `Password`, `Email`, `Name`) VALUES (\'' . 
			    $num_of_users . '\', \'' . 
				$_REQUEST["Username"] . 
				'\', \'' .
			   	password_hash ($_REQUEST["Password"]) .
			   	'\', \''. $_REQUEST["Email"] . '\', \'' . $_REQUEST ["Name"] . '\')';
		$result = $conn->query($sql);
		unset($conn);

        header('location: /login.php');
    }
    else
    {
        header("location: /register.php?type=fail");
    }
?>
