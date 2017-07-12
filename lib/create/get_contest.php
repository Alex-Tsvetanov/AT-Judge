<?php
	if (isset($_SESSION["name"]) == false)
	{
		echo "{'status': 'permission_denied'}";
		return;
	}
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	$result = $conn->query("SELECT * FROM `Contests` WHERE `ID`=\"{$_GET["id"]}\"");
	if ($result->num_rows > 0) 
	{
		$contest = $result->fetch_assoc(); 
		echo "{'status': 'success', 'id': '{$contest['ID']}', 'name': '{$contest['Name']}', 'tasks': {$contest['Tasks']}, 'langs': {$contest['Langs']}, 'password': '{$contest['Password']}'}";
	}
	else
	{
		echo "{'status': 'contest_not_found'}";
	}
?>
