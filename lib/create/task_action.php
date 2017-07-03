<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	$conn->query("DELETE FROM `Tasks` WHERE `ID`=\"{$_POST["id"]}\"");
	$conn->query("INSERT INTO `Tasks`(`Name`, `DescriptionLink`, `TestsLink`, `Input`, `Output`, `Checker`, `StarNotation`, `MaxPoints`, `TL`, `ML`) VALUES (\"{$_POST["task_name"]}\",\"{$_POST["description"]}\", \"{$_POST["tests"]}\", \"{$_POST["input"]}\", \"{$_POST["output"]}\", \"{$_POST["checker"]}\", \"{$_POST["star_notation"]}\", \"{$_POST["points"]}\", \"{$_POST["tl"]}\", \"{$_POST["ml"]}\")");

	echo $conn->last_id();
?>

