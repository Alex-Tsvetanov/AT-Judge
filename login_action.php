<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");
    $valid = false;
	$ID = "invalid username or email or password";
	$number = "invalid username or email or password";
	$name = "invalid username or email or password";
	$email = "invalid username or email or password";
	$teacher = "invalid username or email or password";

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	$sql = "SELECT * FROM Users WHERE `Username`=\"{$_REQUEST['ID']}\" OR `Email`=\"{$_REQUEST["ID"]}\"";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc()) 
		{
			if ($row["Username"] == $_REQUEST["ID"] || $row["Email"] == $_REQUEST["ID"])
			{
				$name = $row["Name"];
				$email = $row["Email"];
				$ID = $row["Username"];
				$number = $row["ID"];
				$valid = (md5($_REQUEST["Password"]) == $row["Password"]);
				$teacher = $row["Teacher"];
				break;
			}
		}
	} 
	unset($conn);

	if ($valid)
    {
		$_SESSION['name'] = $name;
		$_SESSION['email'] = $email;
		$_SESSION['username'] = $ID;
		$_SESSION['ID'] = $number;
		$_SESSION['teacher'] = $teacher;
		if(isset($_REQUEST["url"]))
			header("location: " . urldecode($_REQUEST["url"]));
		else
			header("location: /");
    }
    else
    {
        header("location: /login.php?type=fail");
    }
?>
