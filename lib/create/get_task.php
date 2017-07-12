<?php
	if (isset($_SESSION["name"]) == false)
	{
		echo "{'status': 'permission_denied'}";
		return;
	}
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	$result = $conn->query("SELECT * FROM `Tasks` WHERE `ID`=\"{$_GET["id"]}\"");
	if ($result->num_rows > 0) 
	{
		$task = $result->fetch_assoc();
		echo "{'status': 'success', 'id': '{$task['ID']}', 'name': '{$task['Name']}', 'description': '{$task['DescriptionLink']}', 'tests': '{$task['TestsLink']}', 'input': '{$task['Input']}', 'output': '{$task['Output']}', 'checker': '{$task['Checker']}', 'star': '{$task['StarNotation']}', 'points': '{$task['MaxPoints']}', 'time': '{$task['TL']}', 'memory': '{$task['ML']}' }";
	}
	else
	{
		echo "{'status': 'task_not_found'}";
	}
?>
