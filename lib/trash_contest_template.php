<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><meta name="description" content="Open Source Free Judge System"><meta name="author" content="Alex Tsvetanov"><meta name="keywords" content="Judge, Online, System, Programming, Languages, Algorithms"><meta name="distribution" content="web"><meta name="robots" content="index, follow"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><link rel="icon" href="/favicon.png"><title>Judge :: TechEdu ++</title><link rel="stylesheet" href="/codemirror/lib/codemirror.css"><link rel="stylesheet" href="/codemirror/doc/docs.css"><link rel="stylesheet" href="/codemirror/addon/hint/show-hint.css"><script src="/codemirror/lib/codemirror.js"></script><script src="/codemirror/mode/clike/clike.js"></script><script src="/codemirror/addon/edit/matchbrackets.js"></script><script src="/codemirror/addon/hint/show-hint.js"></script><script src="/codemirror/addon/hint/anyword-hint.js"></script><link href="/css/jumbotron.css" rel="stylesheet"><link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700"><link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="/css/bootstrap.min.css"><link rel="stylesheet" href="/css/bootstrap-material-design.min.css"><link rel="stylesheet" href="/css/ripples.min.css"><link rel="stylesheet" href="/css/snackbar.min.css"><link rel="stylesheet" href="/d9757859af.css"><link rel="stylesheet" href="/css/extension.css"><style>#tasks>nav>ul>li:nth-child(2n+1) {
background-color: #1AA194;
}
</style><link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700"></head><body cz-shortcut-listen="true"><nav class="navbar navbar-static-top navbar-default"><div class="container"><div class="nav-header"><button type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="#" class="navbar-brand">TechEdu ++</a></div><div class="navbar-collapse collapse navbar-responsive-collapse"><ul class="nav navbar-nav"><li class="nav-item"><a href="/" class="nav-link">Home</a></li></ul><form role="search" action="/search.php" class="navbar-form navbar-left"><div class="form-group is-empty"><input placeholder="Search" name="pattern" type="text" class="form-control col-md-8"></div></form><ul class="nav navbar-nav navbar-right"><?php if (isset($_SESSION ["teacher"]) and $_SESSION["teacher"] != "0") { echo "<li class='active'><a href='admin.php'>Administration</a></li>"; } ?><li class="nav-item"><?php if (isset($_SESSION ["name"])) { echo "<a href='/logout.php'>Logout</a>"; } else { echo "<a href='/login.php'>Login</a>"; } ?></li><li class="nav-item"><a href="/register.php" class="nav-link">Register</a></li><li style="border-right: rgba(0,0,0,0) solid 20px;" class="nav-item"><a href="#" class="nav-link"><?php if (isset($_SESSION ["name"])) { echo "Hi, "; echo $_SESSION ["name"]; } else { echo "Hi"; } ?></a></li></ul></div></div></nav><div class="jumbotron none"><div class="container"><h1 class="display-3">{{title}}</h1></div></div><div class="container white"><div class="row"><div style="padding-right: 45px !important; padding-left: 45px !important;" class="col-md-12"><span id="tasks">{{tasks}}</span><hr><form enctype="multipart/form-data" action="/submission.php" method="POST" onsubmit="return validateForm()"><div class="form-group"><label for="email">Email address</label><input type="email" minlength="1" required="" name="email" value="{{email}}" readonly="" class="form-control"><small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small></div><div class="form-group"><label for="task">Task</label><select name="task" class="form-control">{{tasksoption}}</select></div><fieldset><legend>Submit:</legend><div class="form-group"><label for="sourcecode">your source code</label><div style="border: 2pt solid #777;"><textarea id="sourcecode" name="sourcecode" rows="20" autocorrect="off" autocapitalize="off" spellcheck="false" tabindex="0" wrap="on" style="border: 1px solid black;" class="form-control"></textarea></div></div><!--.form-grouplabel.control-label(for='uploadedfile') Source code file
input#uploadedfile(type='file')
input.form-control(readonly='', placeholder='Browse...', type='text')--></fieldset><div class="form-group"><label for="lang">Language</label><select id="lang" name="lang" onchange="change();" class="form-control"></select></div><input type="hidden" name="contest" value="{{contestid}}"><button type="submit" class="btn btn-raised btn-success">Submit</button></form><div id="test" style="display:none;"> </div></div><div style="padding-right: 45px !important; padding-left: 45px !important;" class="col-md-12">{{submits}}</div></div></div><footer><div class="container container-holder"><ul class="row"><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">TechEdu ++</h3><hr><ul class="footer-list"><li><a href="//infocourse.techedu.bg/aboutus.php">За нас</a></li><li><a href="//infocourse.techedu.bg/aboutus.php#trainers">Лектори</a></li><li><a href="//infocourse.techedu.bg/aboutus.php#authors">Автори на проекта</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">Курсове &amp; Семинари</h3><hr><ul class="footer-list"><li><a href="//infocourse.techedu.bg/trainings/tracks">Тракове</a></li><li><a href="//infocourse.techedu.bg/trainings/courses">Курсове</a></li><li><a href="//infocourse.techedu.bg/trainings/seminars">Семинари</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">Партньори</h3><hr><ul class="footer-list"><li><a target="_blank" href="https://delta.bg/">Delta.BG</a></li><li><a target="_blank" href="http://www.vrexpress.bg/">VR Express</a></li><li><a target="_blank" href="https://consent.io/">Consent.io</a></li><li><a target="_blank" href="http://www.igreet.co/">iGreet</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><ul class="social"><li><a href="https://facebook.com/TechEducationGroup/" target="_blank" class="icon-btn"><span class="fa fa-2x fa-facebook"></span></a></li><li><a href="https://www.youtube.com/channel/UCT1g_MbzP5UJauAqmvNq1aQ" target="_blank" class="icon-btn"><span class="fa fa-2x fa-youtube-play"></span></a></li><li><a href="http://github.com/TechEducationPlusPlus/" target="_blank" class="icon-btn"><span class="fa fa-2x fa-github"></span></a></li></ul><div class="all-rights-reserved"><p>&copy; 2017 TechEdu ++</p><p>Всички права запазени.</p><p> <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/2.5/in/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/2.5/in/88x31.png"></a></p></div></li></ul></div></footer><script src="/js/jquery.min.js"></script><script src="/js/tether.min.js"></script><script src="/js/bootstrap.min.js"></script><script src="/js/material.min.js"></script><script src="/js/ripples.min.js"></script><script src="/js/snackbar.min.js"></script><script src="/js/jquery.nouislider.min.js"></script><!--script(src='/js/jquery.cookie.js')--><script src="/js/main.js"></script><script>function validateForm() {
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
var names = {{langs}};
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
CodeMirror.modeURL = "/codemirror/mode/%N/%N.js";
editor = CodeMirror.fromTextArea(document.getElementById("sourcecode"), {
mode: "text/x-c++src",
extraKeys: {"Ctrl-Space": "autocomplete"},
theme: "default",
lineNumbers: true,
lineWrapping: true
});
};</script></body></html>