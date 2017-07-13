<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");
	
	$conn = new MySQL ("judge");

	$sql = "SELECT * FROM Contests WHERE `Link`=\"{$_REQUEST['contest']}\"";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) 
	{
		$row = $result->fetch_assoc(); 
		//echo "<pre>";
		//echo ($row["Password"] == $_REQUEST["password"]);
		//echo ($_REQUEST["password"]);
		//echo ($row["Password"]);
		if($row["Password"] == $_REQUEST["password"])
		{
			//echo "equal";
			//echo ($_REQUEST["password"]);
			//echo ($row["Password"]);
			$_SESSION[$row["Link"]] = true;
			header('Location: ' . $row["Link"]);
		}
		else
		{
			//echo "diff";
			//echo ($_REQUEST["password"]);
			//echo ($row["Password"]);
			header('Location: /login_contest.php?url=' . $row["Link"] . '&type=fail');
		}
		//echo "</pre>";
	} 
	else
		header('Location: /login_contest.php?url=' . $row["Link"] . '&type=fail');
?>
