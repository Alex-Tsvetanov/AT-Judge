<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	$conn->query("UPDATE `Contests` SET `ID`=\"{$_POST["id"]}\", `Name`=\"{$_POST["name"]}\", `Link`=\"/contests/{$_POST["id"]}\", `Tasks`=\"{$_POST["tasks"]}\", `Langs`=\"{$_POST["lang"]}\", `MaxPoints`=\"{$_POST["max_points"]}\", `Certify`=\"0\", `Homework`=\"0\" WHERE `ID`=\"{$_POST[`ID`]}\";");
?>
