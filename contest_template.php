<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta https-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Open Source Free Judge System">
    <meta name="author" content="Alex Tsvetanov">
    <meta name="keywords" content="Judge, Online, System, C++, C#, Algorithms">
    <meta name="distribution" content="web">
    <meta name="robots" content="index, nofollow">
    <meta https-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/favicon.ico">
    <title>AT Judge</title>
	<link href="/css/jumbotron.css" rel="stylesheet"><link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700"><link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="/css/bootstrap.min.css"><link rel="stylesheet" href="/css/bootstrap-material-design.min.css"><link rel="stylesheet" href="/css/ripples.min.css"><link rel="stylesheet" href="/css/snackbar.min.css"><link rel="stylesheet" href="/css/extension.css">
	
	<link rel="stylesheet" href="https://codemirror.net/lib/codemirror.css">
	<link rel="stylesheet" href="https://codemirror.net/theme/lesser-dark.css">
	<script src="https://codemirror.net/lib/codemirror.js"></script>
	<script src="https://codemirror.net/mode/javascript/javascript.js"></script>
	<script src="https://codemirror.net/addon/fold/foldcode.js"></script>
	<script src="https://codemirror.net/mode/clike/clike.js"></script>
</head>

<body>
    <nav class="navbar navbar-fixed-top navbar-default"><a href="/" class="navbar-brand">AT Judge</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-left">
                <li class="nav-item active"><a href="/" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="/contactus.php" class="nav-link">Contact</a></li>
                <li class="nav-item"><a href="/aboutus.php" class="nav-link">About</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="nav-item" id="login"></li>
                <li class="nav-item"><a href="/register.php" class="nav-link">Register</a></li>
                <li style="border-right: rgba(0,0,0,0) solid 20px;" class="nav-item active"><a href="/user.php" class="nav-link">Hi<?php if (isset($_COOKIE ["name"])){echo ", "; echo $_COOKIE ["name"];} ?></a></li>
            </ul>
        </div>
    </nav>
	<div style="height: 50px"></div>
    <div class="jumbotron">
        <div class="container">
			<h1 class="display-3">{{title}}</h1>
        </div>
    </div>
	<div class="container">
        <div class="row">
            <div class="col-md-12" style="padding-right: 45px !important; padding-left: 45px !important;">
				<span id="tasks">
					<ul class="nav nav-tabs" style="margin-bottom: 15px;">
						<li class="active"><a href="#home" data-toggle="tab">Home</a></li>
						<li><a href="#profile" data-toggle="tab">Profile</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="home">
							<p>asdf1</p>
						</div>
						<div class="tab-pane fade" id="profile">
							<p>asdf</p>
						</div>
					</div>
				</span>
				<hr>
                <form enctype="multipart/form-data" action="/submission.php" method="POST" onsubmit="return validateForm()">
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" minlength=1 required name="email" value="{{email}}" readonly="" class="form-control"><small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small></div>
                    <div class="form-group">
                        <label for="task">Task</label>
                        <input name="task" class="form-control" type="hidden" value="{{}}"></id>
                    </div>
                    <fieldset>
                        <legend>Submit:</legend>
                        <div class="form-group">
                            <label for="sourcecode">your source code</label>
							<div style="border: 2pt solid #777;">
                            <textarea id="sourcecode" name="sourcecode" rows="20" autocorrect="off" autocapitalize="off" spellcheck="false" tabindex="0" wrap="on" class="form-control" style="border: 1px solid black;"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="uploadedfile">Source code file</label>
							<input id="uploadedfile" type="file">
							<input readonly="" class="form-control" placeholder="Browse..." type="text">
						</div>
                    </fieldset>
                    <div class="form-group">
                        <label for="lang">Language</label>
                        <select id="lang" name="lang" class="form-control" onchange="change();"></select>
                    </div>
                    <input type="hidden" name="contest" value="{{contestid}}">
                    <button type="submit" class="btn btn-raised btn-success">Submit</button>
                </form>
				<div id="test" style="display:none;"> </div>
            </div>
            <div class="col-md-12" style="padding-right: 45px !important; padding-left: 45px !important;">
				{{submits}}
			</div>
        </div>
    </div>
    <hr>
    <footer>
        <center>
            <p>Copyrights © Alex Tsvetanov 2016-2017</p>
        </center>
    </footer>
	<script src="/js/jquery.min.js"></script><script src="/js/tether.min.js"></script><script src="/js/bootstrap.min.js"></script><script src="/js/material.min.js"></script><script src="/js/ripples.min.js"></script><script src="/js/snackbar.min.js"></script><script src="/js/jquery.nouislider.min.js"></script><script src="/js/jquery.cookie.js"></script><script src="/js/main.js"></script>
	<script>
		function validateForm() {
			var x = document.forms[0]["email"].value;
			if (x == "") {
				alert("Please, login!");
				return false;
			}
		}
		var editor;
		var modes = {
			js: "javascript",
			java: "text/x-java",
			c: "text/x-csrc",
			cpp: "text/x-c++src",
			cs: "text/x-csharp",
			php: "application/x-httpsd-php",
			py: "text/x-python",
			cy: "text/x-cython",
			hs: "text/x-haskell",
			ts: "application/typescript"
		};
		var names =  {{langs}};
		function change ()
		{
			var e = document.getElementById("lang");
			var value = e.options[e.selectedIndex].value;
			var text = e.options[e.selectedIndex].text;
			document.getElementById ("test").innerHTML += "change (): value = " + value + ", text = " + text + ", mode [value]: " + modes [value] + "<br>";
			editor.setOption("mode", modes [value]);
			CodeMirror.autoLoadMode(editor, modes[value]);
		}

		window.onload = function() {
			for (var mode in names)
			{
				document.getElementById ("test").innerHTML += mode + " -> " + modes [mode] + "<br>";
				document.getElementById ("lang").innerHTML += "<option value='" + mode + "'>" + names [mode] + "</option>";
			}
			CodeMirror.modeURL = "https://codemirror.net/mode/%N/%N.js";
			editor = CodeMirror.fromTextArea(document.getElementById("sourcecode"), {
				mode: "text/x-c++src",
				theme: "default",
				lineNumbers: true,
				lineWrapping: true
			});
		};
	</script>
</body>

</html>