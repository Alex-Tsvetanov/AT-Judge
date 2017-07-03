<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	$conn->query("UPDATE `Tasks` SET `Name`=\"{$_POST["task_name"]}\",`DescriptionLink`=\"{$_POST["description"]}\", `TestsLink`=\"{$_POST["tests"]}\", `Input`=\"{$_POST["input"]}\", `Output`=\"{$_POST["output"]}\", `Checker`=\"{$_POST["checker"]}\", `StarNotation`=\"{$_POST["star_notation"]}\", `MaxPoints`=\"{$_POST["points"]}\", `TL`=\"{$_POST["tl"]}\", `ML`=\"{$_POST["ml"]}\" WHERE `ID`=\"{$_POST["id"]}\";");
?>

