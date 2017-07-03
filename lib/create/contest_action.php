<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	$conn->query("DELETE FROM `Contests` WHERE `ID`=\"{$_POST["id"]}\"");
	if ($_POST["id"] == "-1")
		$_POST["id"] = md5($_POST["name"] . $_SESSION["name"]);
	$conn->query("INSERT INTO `Contests`(`ID`, `Name`, `Link`, `Tasks`, `Langs`, `MaxPoints`, `Certify`, `Homework`) VALUES (\"{$_POST["id"]}\", \"{$_POST["name"]}\", \"/contests/{$_POST["id"]}\", \"{$_POST["tasks"]}\", \"{$_POST["lang"]}\", \"{$_POST["max_points"]}\", \"0\", \"0\")");

	echo $_POST["id"];
?>
