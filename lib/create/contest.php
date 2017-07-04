<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><meta name="description" content="Open Source Free Judge System"><meta name="author" content="Alex Tsvetanov"><meta name="keywords" content="Judge, Online, System, Programming, Languages, Algorithms"><meta name="distribution" content="web"><meta name="robots" content="index, follow"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><link rel="icon" href="/favicon.png"><title>Judge :: TechEdu ++</title><link href="/css/jumbotron.css" rel="stylesheet"><link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700"><link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="/css/bootstrap.min.css"><link rel="stylesheet" href="/css/bootstrap-material-design.min.css"><link rel="stylesheet" href="/css/ripples.min.css"><link rel="stylesheet" href="/css/snackbar.min.css"><link rel="stylesheet" href="/d9757859af.css"><link rel="stylesheet" href="/css/extension.css"><link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700"><style>input, select {
	text-align: center;
}</style></head><body cz-shortcut-listen="true"><nav class="navbar navbar-static-top navbar-default"><div class="container"><div class="nav-header"><button type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="#" class="navbar-brand">TechEdu ++</a></div><div class="navbar-collapse collapse navbar-responsive-collapse"><ul class="nav navbar-nav"><li class="nav-item"><a href="/" class="nav-link">Home</a></li></ul><form role="search" action="/search.php" class="navbar-form navbar-left"><div class="form-group is-empty"><input placeholder="Search" name="pattern" type="text" class="form-control col-md-8"></div></form><ul class="nav navbar-nav navbar-right"><li id="login" class="nav-item"></li><li class="nav-item"><a href="/register.php" class="nav-link">Register</a></li><li style="border-right: rgba(0,0,0,0) solid 20px;" class="nav-item"><a href="/user.php" class="nav-link"> 
Hi
<?php if (isset($_COOKIE ["name"])) { echo ", "; echo $_COOKIE ["name"]; } ?></a></li></ul></div></div></nav><div class="jumbotron none"><div class="container"><h1 class="display-3">Create contest</h1><h2 class="display-3"><a href="/lib/edit/contest.php" class="btn btn-raised btn-default">Edit contest</a></h2></div></div><div style="border: 10px solid white;" class="container white"><center><span id="info"><div class="row"><input style="mfont-size:21pt;" type="text" minlength="1" required="" name="contest_name" placeholder="Name of the contest" class="form-control"><fieldset><legend>Submission types</legend><div class="row"><div class="col-md-4"><div class="pull-right"><p>C</p></div></div><div class="col-md-4"><div class="pull-left"><input name="lang" value="c" type="checkbox"></div></div><div class="col-md-4"><div class="pull-left"><button type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Allow submission with C code" class="btn btn-default"><i aria-hidden="true" class="fa fa-question text-primary"></i></button></div></div></div><div class="row"><div class="col-md-4"><div class="pull-right"><p>C++</p></div></div><div class="col-md-4"><div class="pull-left"><input name="lang" value="cpp" type="checkbox"></div></div><div class="col-md-4"><div class="pull-left"><button type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Allow submission with C++ code" class="btn btn-default"><i aria-hidden="true" class="fa fa-question text-primary"></i></button></div></div></div><div class="row"><div class="col-md-4"><div class="pull-right"><p>Python</p></div></div><div class="col-md-4"><div class="pull-left"><input name="lang" value="py" type="checkbox"></div></div><div class="col-md-4"><div class="pull-left"><button type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Allow submission with Python code" class="btn btn-default"><i aria-hidden="true" class="fa fa-question text-primary"></i></button></div></div></div><div class="row"><div class="col-md-4"><div class="pull-right"><p>Node.JS</p></div></div><div class="col-md-4"><div class="pull-left"><input name="lang" value="js" type="checkbox"></div></div><div class="col-md-4"><div class="pull-left"><button type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Allow submission with JavaScript code" class="btn btn-default"><i aria-hidden="true" class="fa fa-question text-primary"></i></button></div></div></div></fieldset></div></span><hr><div id="tasks" class="row"></div><div class="row"><hr><input type="hidden" name="contest_id" value="-1"><div class="col-md-3"><button id="task" class="btn btn-default btn-raised">Add task</button><button onclick="submit();" class="btn btn-default btn-raised">Create contest</button></div></div></center></div><footer><div class="container container-holder"><ul class="row"><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">TechEdu ++</h3><hr><ul class="footer-list"><li><a href="//infocourse.techedu.bg/aboutus.php">За нас</a></li><li><a href="//infocourse.techedu.bg/aboutus.php#trainers">Лектори</a></li><li><a href="//infocourse.techedu.bg/aboutus.php#authors">Автори на проекта</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">Курсове &amp; Семинари</h3><hr><ul class="footer-list"><li><a href="//infocourse.techedu.bg/trainings/tracks">Тракове</a></li><li><a href="//infocourse.techedu.bg/trainings/courses">Курсове</a></li><li><a href="//infocourse.techedu.bg/trainings/seminars">Семинари</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">Партньори</h3><hr><ul class="footer-list"><li><a target="_blank" href="https://delta.bg/">Delta.BG</a></li><li><a target="_blank" href="http://www.vrexpress.bg/">VR Express</a></li><li><a target="_blank" href="https://consent.io/">Consent.io</a></li><li><a target="_blank" href="http://www.igreet.co/">iGreet</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><ul class="social"><li><a href="https://facebook.com/TechEducationGroup/" target="_blank" class="icon-btn"><span class="fa fa-2x fa-facebook"></span></a></li><li><a href="https://www.youtube.com/channel/UCT1g_MbzP5UJauAqmvNq1aQ" target="_blank" class="icon-btn"><span class="fa fa-2x fa-youtube-play"></span></a></li><li><a href="http://github.com/TechEducationPlusPlus/" target="_blank" class="icon-btn"><span class="fa fa-2x fa-github"></span></a></li></ul><div class="all-rights-reserved"><p>&copy; 2017 TechEdu ++</p><p>Всички права запазени.</p><p> <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/2.5/in/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/2.5/in/88x31.png"></a></p></div></li></ul></div></footer><script src="/js/jquery.min.js"></script><script src="/js/tether.min.js"></script><script src="/js/bootstrap.min.js"></script><script src="/js/material.min.js"></script><script src="/js/ripples.min.js"></script><script src="/js/snackbar.min.js"></script><script src="/js/jquery.nouislider.min.js"></script><script src="/js/jquery.cookie.js"></script><script src="/js/main.js"></script><script>$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
$("[name=\"contest_id\"]").val("-1");
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
	console.log($('form#details${num}').fadeOut(300));
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
	`<div id="task${num}" class="col-md-6">
	  <div class="row form-group">
	      <div class="col-md-10">
	        <input id="task_name${num}" style="font-size:11pt;" type="text" minlength="1" required="" name="task_name" placeholder="Name of the task" class="form-control"/>
	      </div>
	      <div class="col-md-2">
	        <a href="#details${num}" data-toggle="collapse"><i aria-hidden="false" class="fa fa-chevron-circle-down"></i></a>
	      </div>
	  </div>
	  
	  <form id="details${num}" onsubmit="fadeout(${num});">
	    <div class="row form-group">
	      <div class="col-md-10">
	        <input style="font-size:9pt;" type="text" minlength="1" required="" name="description" placeholder="https://" class="form-control"/>
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="Link to description of the task"></i>
	      </div>
	    </div>
	    <div class="row form-group">
	      <div class="col-md-10">
	        <input style="font-size:9pt;" type="text" minlength="1" required="" name="tests" placeholder="https://" class="form-control"/>
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="Link to test cases of the task"></i>
	      </div>
	    </div>
	    <div class="row form-group">
	      <div class="col-md-10">
	        <input style="font-size:9pt;" type="text" minlength="1" required="" name="input" placeholder="name.*.in" class="form-control"/>
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="Pattern string for input files of test cases"></i>
	      </div>
	    </div>
	    <div class="row form-group">
	      <div class="col-md-10">
	      	<input style="font-size:9pt;" type="text" minlength="1" required="" name="output" placeholder="name.*.sol" class="form-control"/>  
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="Pattern string for output files of test cases"></i>
	      </div>
	    </div>
	    <div class="row form-group">
	      <div class="col-md-10">
		      <select name="checker" class="form-control">
		        <option value="diff" selected="">diff</option>
		      </select>  
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="Checker for this task"></i>
	      </div>
	    </div>
	    <div class="row form-group">
	      <div class="col-md-10">
	          <input style="font-size:9pt;" type="text" minlength="1" required="" name="star_notation" placeholder="01,02,03,04,05,06,07,08,09,10" class="form-control"/>
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="What must be on the place of '*' in file patterns."></i>
	      </div>
	    </div>
	    <div class="row form-group">
	      <div class="col-md-10">
	        <input style="font-size:9pt;" type="text" minlength="1" required="" name="points" placeholder="100" class="form-control"/>
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="Max points for the task"></i>
	      </div>
	    </div>
	    <div class="row form-group">
	      <div class="col-md-10">
	      	<input style="font-size:9pt;" type="text" minlength="1" required="" name="tl" placeholder="1s" class="form-control"/>
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="Time limit for the task"></i>
	      </div>
	    </div>
	    <div class="row form-group">
	      <div class="col-md-10">
	      	<input style="font-size:9pt;" type="text" minlength="1" required="" name="ml" placeholder="256M" class="form-control"/>
	      </div>
	      <div class="col-md-2">
	        <i aria-hidden="true" class="fa fa-question text-primary" data-toggle="tooltip" data-placement="right" title="" data-original-title="Memory limit for the task"></i>
	      </div>
	    </div>
	    <input name="id" value="-1" type="hidden"/>
	    <input type="submit" class="btn btn-default btn-raised" value="Update details">
	  </form>
	</div>`);
	num ++;
	$('[data-toggle="tooltip"]').tooltip();
});</script></body></html>