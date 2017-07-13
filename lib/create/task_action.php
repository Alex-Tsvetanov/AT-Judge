<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	if ($_POST["id"] == "createEmptyTask")
	{
		$conn->query("INSERT INTO `Tasks`(`Name`, `DescriptionLink`, `TestsLink`, `Input`, `Output`, `Checker`, `StarNotation`, `MaxPoints`, `TL`, `ML`) VALUES (\"\",\"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\")");
		echo $conn->last_id();
	}
	else if ($_POST["id"] == "-1")
	{
		$conn->query("INSERT INTO `Tasks`(`Name`, `DescriptionLink`, `TestsLink`, `Input`, `Output`, `Checker`, `StarNotation`, `MaxPoints`, `TL`, `ML`) VALUES (\"{$_POST["task_name"]}\",\"{$_POST["description"]}\", \"{$_POST["tests"]}\", \"{$_POST["input"]}\", \"{$_POST["output"]}\", \"{$_POST["checker"]}\", \"{$_POST["star_notation"]}\", \"{$_POST["points"]}\", \"{$_POST["tl"]}\", \"{$_POST["ml"]}\")");
		echo $conn->last_id();
	}
	else
	{
		$conn->query($sql = "UPDATE `Tasks` SET `Name`=\"{$_POST["task_name"]}\", `DescriptionLink`=\"{$_POST["description"]}\", `TestsLink`=\"{$_POST["tests"]}\", `Input`=\"{$_POST["input"]}\", `Output`=\"{$_POST["output"]}\", `Checker`=\"{$_POST["checker"]}\", `StarNotation`=\"{$_POST["star_notation"]}\", `MaxPoints`=\"{$_POST["points"]}\", `TL`=\"{$_POST["tl"]}\", `ML`=\"{$_POST["ml"]}\" WHERE `ID`=\"{$_POST["id"]}\"");
		echo $_POST["id"];
	}

?>

