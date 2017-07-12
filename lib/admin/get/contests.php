<?php
	include_once ($_SERVER["DOCUMENT_ROOT"] . "/lib/mysql.php");

	$dbname = "judge";

	$conn = new MySQL ($dbname);

	if ($_SESSION["teacher"] == "2")
	{
		$sql = "SELECT * FROM Contests WHERE `Homework`=\"0\"";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) 
		{
			while($row = $result->fetch_assoc()) 
			{
				echo '<div class="course-item col-md-4"><h2 id="' . $row["ID"] . '">' . $row["Name"] . '</h2><br><a href="#" role="button" class="btn btn-raised btn-success" onclick="edit_contest(\'' . $row["ID"] . '\');">Edit »</a> ' . '<a onclick="submits(\'' . $row["ID"] . '\');" href="#" role="button" class="btn btn-default active">View submissions »</a></div>';
			}
		} 
	}
	else if ($_SESSION["teacher"] == "1")
	{
		$sql = "SELECT * FROM Contests WHERE `Homework`=\"0\" AND `Author`=\"" . $_SESSION["username"] . "\"";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) 
		{
			while($row = $result->fetch_assoc()) 
			{
				echo '<div class="course-item col-md-4"><h2 id="' . $row["ID"] . '">' . $row["Name"] . '</h2><br><a href="#" role="button" class="btn btn-raised btn-success" onclick="edit_contest(\'' . $row["ID"] . '\');">Edit »</a> ' . '<a onclick="submits(\'' . $row["ID"] . '\');" href="#" role="button" class="btn btn-default active">View submissions »</a></div>';
			}
		} 
	}
	else if ($_SESSION["teacher"] == "0")
	{
		echo "<h1 class='text-danger'>Permission denied!</h1>";
	}
	else
	{
		echo "<h1 class='text-warning'>Please login!</h1>";
	}
	unset($conn);
?>
