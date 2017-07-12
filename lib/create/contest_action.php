<?php
	if (isset($_SESSION["name"]) == false)
	{
		echo "-1";
		return;
	}
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	if ($_POST["id"] != "-1")
		$conn->query("DELETE FROM `Contests` WHERE `ID`=\"{$_POST["id"]}\"");
	if ($_POST["id"] == "-1")
		$_POST["id"] = md5(strval(rand() * rand()) . $_POST["name"] . $_SESSION["name"]);
	$conn->query($sql="INSERT INTO `Contests`(`ID`, `Name`, `Link`, `Tasks`, `Langs`, `MaxPoints`, `Certify`, `Homework`, `Password`, `Author`) VALUES (\"{$_POST["id"]}\", \"{$_POST["name"]}\", \"/contests/{$_POST["id"]}\", '{$_POST["tasks"]}', '{$_POST["lang"]}', \"{$_POST["max_points"]}\", \"0\", \"0\", \"{$_POST["password"]}\", \"{$_SESSION["username"]}\")");

	echo $_POST["id"];
?>
