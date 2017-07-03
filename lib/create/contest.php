<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><meta name="description" content="Open Source Free Judge System"><meta name="author" content="Alex Tsvetanov"><meta name="keywords" content="Judge, Online, System, Programming, Languages, Algorithms"><meta name="distribution" content="web"><meta name="robots" content="index, follow"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><link rel="icon" href="/favicon.png"><title>Judge :: TechEdu ++</title><link href="/css/jumbotron.css" rel="stylesheet"><link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700"><link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="/css/bootstrap.min.css"><link rel="stylesheet" href="/css/bootstrap-material-design.min.css"><link rel="stylesheet" href="/css/ripples.min.css"><link rel="stylesheet" href="/css/snackbar.min.css"><link rel="stylesheet" href="/d9757859af.css"><link rel="stylesheet" href="/css/extension.css"><link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700"></head><body cz-shortcut-listen="true"><nav class="navbar navbar-static-top navbar-default"><div class="container"><div class="nav-header"><button type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="#" class="navbar-brand">TechEdu ++</a></div><div class="navbar-collapse collapse navbar-responsive-collapse"><ul class="nav navbar-nav"><li class="nav-item"><a href="/" class="nav-link">Home</a></li></ul><form role="search" action="/search.php" class="navbar-form navbar-left"><div class="form-group is-empty"><input placeholder="Search" name="pattern" type="text" class="form-control col-md-8"></div></form><ul class="nav navbar-nav navbar-right"><li id="login" class="nav-item"></li><li class="nav-item"><a href="/register.php" class="nav-link">Register</a></li><li style="border-right: rgba(0,0,0,0) solid 20px;" class="nav-item"><a href="/user.php" class="nav-link"> 
Hi
<?php if (isset($_COOKIE ["name"])) { echo ", "; echo $_COOKIE ["name"]; } ?></a></li></ul></div></div></nav><div class="jumbotron none"><div class="container"><h1 class="display-3">Create contest</h1><h2 class="display-3"><a href="/lib/edit/contest.php" class="btn btn-raised btn-default">Edit contest</a></h2></div></div><div style="border: 10px solid white;" class="container white"><span id="info"><div class="row"><input style="font-size:21pt;" type="text" minlength="1" required="" name="contest_name" value="Name of the contest" class="form-control"><fieldset class="col-md-12"><legend>Choose programming languages</legend><div><input id="c" type="checkbox" name="lang" value="c"><label for="c">&nbsp;C</label></div><div><input id="cpp" type="checkbox" name="lang" value="cpp"><label for="cpp">&nbsp;C++</label></div><div><input id="py" type="checkbox" name="lang" value="py"><label for="py">&nbsp;Python</label></div><div><input id="js" type="checkbox" name="lang" value="js"><label for="js">&nbsp;NodeJS</label></div></fieldset></div><hr></span><div id="tasks" class="row"></div><div class="row"><hr><input type="hidden" name="contest_id" value="-1"><div class="col-md-3"><button id="task" class="btn btn-default btn-raised">Add task</button><button onclick="submit();" class="btn btn-default btn-raised">Create contest</button></div></div></div><footer><div class="container container-holder"><ul class="row"><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">TechEdu ++</h3><hr><ul class="footer-list"><li><a href="//infocourse.techedu.bg/aboutus.php">За нас</a></li><li><a href="//infocourse.techedu.bg/aboutus.php#trainers">Лектори</a></li><li><a href="//infocourse.techedu.bg/aboutus.php#authors">Автори на проекта</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">Курсове &amp; Семинари</h3><hr><ul class="footer-list"><li><a href="//infocourse.techedu.bg/trainings/tracks">Тракове</a></li><li><a href="//infocourse.techedu.bg/trainings/courses">Курсове</a></li><li><a href="//infocourse.techedu.bg/trainings/seminars">Семинари</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">Партньори</h3><hr><ul class="footer-list"><li><a target="_blank" href="https://delta.bg/">Delta.BG</a></li><li><a target="_blank" href="http://www.vrexpress.bg/">VR Express</a></li><li><a target="_blank" href="https://consent.io/">Consent.io</a></li><li><a target="_blank" href="http://www.igreet.co/">iGreet</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><ul class="social"><li><a href="https://facebook.com/TechEducationGroup/" target="_blank" class="icon-btn"><span class="fa fa-2x fa-facebook"></span></a></li><li><a href="https://www.youtube.com/channel/UCT1g_MbzP5UJauAqmvNq1aQ" target="_blank" class="icon-btn"><span class="fa fa-2x fa-youtube-play"></span></a></li><li><a href="http://github.com/TechEducationPlusPlus/" target="_blank" class="icon-btn"><span class="fa fa-2x fa-github"></span></a></li></ul><div class="all-rights-reserved"><p>&copy; 2017 TechEdu ++</p><p>Всички права запазени.</p><p> <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/2.5/in/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/2.5/in/88x31.png"></a></p></div></li></ul></div></footer><script src="/js/jquery.min.js"></script><script src="/js/tether.min.js"></script><script src="/js/bootstrap.min.js"></script><script src="/js/material.min.js"></script><script src="/js/ripples.min.js"></script><script src="/js/snackbar.min.js"></script><script src="/js/jquery.nouislider.min.js"></script><script src="/js/jquery.cookie.js"></script><script src="/js/main.js"></script><script>$("[name=\"contest_id\"]").val("-1");
let num = 0;
let tasks = {};
function submit ()
{
	let task_points = $('input[name="points"]').map(function(){return $(this).val();});
	console.log (task_points);
	let maxp = Object.keys(task_points).reduce(function (res, key) {
		let val = task_points[key];
		if (typeof(val) == "string")
			res += Number(val);
		console.log (val + " -> " + typeof(val));
		console.log (res);
		return res;
	}, 0);
	let langs = $("input:checkbox").map(function(){
		if ($(this).is(":checked"))
			return $(this).val();
		else
			return undefined;
	}).filter (x => x != undefined).get();
	$.post('/lib/create/contest_action.php',
		{ name: $('[name="contest_name"]').val(), tasks: JSON.stringify (tasks), lang: JSON.stringify (langs), id: $("[name=\"contest_id\"]").val(), max_points: maxp },
		function (data, status) {
			//alert (data);
			$("[name=\"contest_id\"]").val(data);
		}
	);
}
function show (i)
{
	console.log($('#' + i).fadeIn(300));
}
function fadeout (num)
{
	console.log($('#tasks>.col-md-3>span').fadeOut(300));
	let ser = $('#task' + num + ' :input').serializeArray();
	//console.log (ser);
	let params = {};
	for (let x of $('#task' + num + ' :input').serializeArray())
	{
		params [x.name] = x.value;
		//console.log (params);
	}
	//console.log (params);
	$.post('/lib/create/task_action.php',
		params,
		function (data, status) {
			//alert (data);
			tasks[params["task_name"]] = data;
			$("#task" + num + " [name=\"id\"]").val(data);
		}
	);
}
$('button#task').click (function() {
	/*if ($('#tasks').children().length > 0)
	{
		let all_tasks = $('#tasks').children();
		console.log (all_tasks);
		let last_task = $(all_tasks[all_tasks.length - 1]);
		console.log (last_task);
		let last_task_details = $(last_task.children()[2]);
		console.log (last_task_details);
		last_task_details.fadeOut(300);
		console.log ("fadeout");
	}*/
	$('#tasks').html ($('#tasks').html () + 
	`<div class="col-md-3" class="task" id="task` + num + `">
		<input id="` + num +`task_name" class="form-control" style="font-size:11pt;" type="text" minlength="1" required="" name="task_name", value="Name of the task">
		<i class="fa fa-chevron-circle-down" aria-hidden="false" onclick="show(` + num + `);"></i>
		</input>
		<span id="` + num + `">
			<div class="form-group">
				<input class="form-control" style="font-size:9pt;" type="text" minlength="1" required="" name="description", value="https://">
				<small class="form-text text-muted">Link to description of the task</small>
			</div>
			<div class="form-group">
				<input class="form-control" style="font-size:9pt;" type="text" minlength="1" required="" name="tests", value="https://">
				<small class="form-text text-muted">Link to test cases of the task</small>
			</div>
			<div class="form-group">
				<input class="form-control" style="font-size:9pt;" type="text" minlength="1" required="" name="input", value="name.*.in">
				<input class="form-control" style="font-size:9pt;" type="text" minlength="1" required="" name="output", value="name.*.sol">
				<small class="form-text text-muted">Pattern string for input and output files</small>
			</div>
			<div class="form-group">
				<select class="form-control" name="checker">
					<option value="diff" selected="">diff</option>
				</select>
				<small class="form-text text-muted">Checker for this task</small>
			</div>
			<div class="form-group">
				<input class="form-control" style="font-size:9pt;" type="text" minlength="1" required="" name="star_notation", value="01,02,03,04,05,06,07,08,09,10">
				<small class="form-text text-muted">What must be on the place of "*" in file patterns.</small>
			</div>
			<div class="form-group">
				<input class="form-control" style="font-size:9pt;" type="text" minlength="1" required="" name="points" value="100">
				<small class="form-text text-muted">Max points</small>
			</div>
			<div class="form-group">
				<input class="form-control" style="font-size:9pt;" type="text" minlength="1" required="" name="tl", value="1s">
				<small class="form-text text-muted">Time Limit</small>
			</div>
			<div class="form-group">
				<input class="form-control" style="font-size:9pt;" type="text" minlength="1" required="" name="ml", value="256M">
				<small class="form-text text-muted">Memory Limit</small>
			</div>
			<input name="id" value="-1" type="hidden">
			<button class="btn btn-default btn-raised" onclick="fadeout(` + num + `);">Submit</button>
		</span>
	</div>`);
	num ++;
});</script></body></html>