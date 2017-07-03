<?php
	if ($_SERVER["REQUEST_URI"] == '/queue')
	{
		include (__DIR__ . "/lib/queue.php");
		print_queue ();
		return false;
	}
	else if (preg_match("/\/verify\/cert\/.*\/.*/i", $_SERVER["REQUEST_URI"])) 
	{
		include (__DIR__ . "/lib/get/cert.php");
		print_cert ();
		return true;
	}
	else if (preg_match("/\/quiz\/.*\/results/i", $_SERVER["REQUEST_URI"])) 
	{
		include (__DIR__ . "/lib/quiz/result.php");
		print_quiz_results ($_SERVER["REQUEST_URI"]);
		return false;
	}
	else if (preg_match("/\/quiz\/.*/i", $_SERVER["REQUEST_URI"])) 
	{
		include (__DIR__ . "/lib/get/quiz.php");
		print_quiz ($_SERVER["REQUEST_URI"]);
		return false;
	}
	else if (preg_match("/\/contests\/.*\/results/i", $_SERVER["REQUEST_URI"])) 
	{
		include (__DIR__ . "/lib/get/result.php");
		print_results ();
		return false;
	}
	else if (preg_match("/\/submit\/.*/i", $_SERVER["REQUEST_URI"])) 
	{

		$_REQUEST ["id"] = substr ($_SERVER["REQUEST_URI"], 8);
		include (__DIR__ . "/lib/get/submission.php");
		return false;
	}
	else if (substr ($_SERVER["REQUEST_URI"], 0, 10) == '/contests/')
	{
		include (__DIR__ . "/lib/get/contest.php");
		print_contest ($_SERVER["REQUEST_URI"]);
		return false;
	}
	else
	{
		$_GET['_uri'] = $_SERVER['REQUEST_URI'] . '.php';
		return false;
	}
?>
