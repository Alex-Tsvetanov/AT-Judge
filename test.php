<!DOCTYPE html><html lang="en"><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><meta name="description" content="Open Source Free Judge System"><meta name="author" content="Alex Tsvetanov"><meta name="keywords" content="Judge, Online, System, Programming, Languages, Algorithms"><meta name="distribution" content="web"><meta name="robots" content="index, follow"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><link rel="icon" href="/favicon.png"><title>Judge :: TechEdu ++</title><link href="/css/jumbotron.css" rel="stylesheet"><link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700"><link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons"><link rel="stylesheet" href="/css/bootstrap.min.css"><!----><link rel="stylesheet" href="/css/bootstrap-material-design.min.css"><!----><link rel="stylesheet" href="/css/ripples.min.css"><link rel="stylesheet" href="/css/snackbar.min.css"><link rel="stylesheet" href="/d9757859af.css"><link rel="stylesheet" href="/css/extension.css"></head><body cz-shortcut-listen="true"><nav class="navbar navbar-static-top navbar-default"><div class="container"><div class="nav-header"><button type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="#" class="navbar-brand">TechEdu ++</a></div><div class="navbar-collapse collapse navbar-responsive-collapse"><ul class="nav navbar-nav"><li class="nav-item"><a href="/" class="nav-link">Home</a></li></ul><form role="search" action="/search.php" class="navbar-form navbar-left"><div class="form-group is-empty"><input placeholder="Search" name="pattern" type="text" class="form-control col-md-8"></div></form><ul class="nav navbar-nav navbar-right"><?php if (isset($_SESSION ["teacher"]) and $_SESSION["teacher"] != "0") { echo "<li class='active'><a href='admin.php'>Administration</a></li>"; } ?><li class="nav-item"><?php if (isset($_SESSION ["name"])) { echo "<a href='/logout.php'>Logout</a>"; } else { echo "<a href='/login.php'>Login</a>"; } ?></li><li class="nav-item"><a href="/register.php" class="nav-link">Register</a></li><li style="border-right: rgba(0,0,0,0) solid 20px;" class="nav-item"><a href="/user.php" class="nav-link"> 
<?php if (isset($_SESSION ["name"])) { echo "Hi, "; echo $_SESSION ["name"]; } else { echo "Hi"; } ?></a></li></ul></div></div></nav>

<div class="container">
  <h2>Dynamic Tabs</h2>
  <p>To make the tabs toggleable, add the data-toggle="tab" attribute to each link. Then add a .tab-pane class with a unique ID for every tab and wrap them inside a div element with class .tab-content.</p>
  <div class="tabs-wrapper"> 
    <ul class="nav navbar-nav navbar navbar-defualt nav-tabs md-pills pills-ins" role="tablist">
      <li class="nav-item active">
			<a class="nav-link active" data-toggle="tab" role="tab" href="#contestdescription">Tasks:</a>
	  </li>
      <li class="nav-item">
			<a class="nav-link" data-toggle="tab" role="tab" href="#home">Home</a>
	  </li>
      <li class="nav-item">
	        <a class="nav-link" data-toggle="tab" role="tab" href="#menu1">Menu 1</a>
	  </li>
      <li class="nav-item">
	        <a class="nav-link" data-toggle="tab" role="tab" href="#menu2">Menu 2</a>
	  </li>
      <li class="nav-item">
			<a class="nav-link" data-toggle="tab" role="tab" href="#menu3">Menu 3</a>
	  </li>
    </ul>
  </div>

  <div class="tab-content card">
    <div id="contestdescription" class="container tab-pane fade in active">
      <h3>Contest description</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="home" class="container tab-pane fade in">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="container tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="container tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="container tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>

<footer><div class="container container-holder"><ul class="row"><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">TechEdu ++</h3><hr><ul class="footer-list"><li><a href="//infocourse.techedu.bg/aboutus.php">За нас</a></li><li><a href="//infocourse.techedu.bg/aboutus.php#trainers">Лектори</a></li><li><a href="//infocourse.techedu.bg/aboutus.php#authors">Автори на проекта</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">Курсове &amp; Семинари</h3><hr><ul class="footer-list"><li><a href="//infocourse.techedu.bg/trainings/tracks">Тракове</a></li><li><a href="//infocourse.techedu.bg/trainings/courses">Курсове</a></li><li><a href="//infocourse.techedu.bg/trainings/seminars">Семинари</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><h3 class="list-title">Партньори</h3><hr><ul class="footer-list"><li><a target="_blank" href="https://delta.bg/">Delta.BG</a></li><li><a target="_blank" href="http://www.vrexpress.bg/">VR Express</a></li><li><a target="_blank" href="https://consent.io/">Consent.io</a></li><li><a target="_blank" href="http://www.igreet.co/">iGreet</a></li></ul></li><li class="col-md-3 col-sm-12 col-xs-12 footer-list-wrapper"><ul class="social"><li><a href="https://facebook.com/TechEducationGroup/" target="_blank" class="icon-btn"><span class="fa fa-2x fa-facebook"></span></a></li><li><a href="https://www.youtube.com/channel/UCT1g_MbzP5UJauAqmvNq1aQ" target="_blank" class="icon-btn"><span class="fa fa-2x fa-youtube-play"></span></a></li><li><a href="http://github.com/TechEducationPlusPlus/" target="_blank" class="icon-btn"><span class="fa fa-2x fa-github"></span></a></li></ul><div class="all-rights-reserved"><p>&copy; 2017 TechEdu ++</p><p>Всички права запазени.</p><p> <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/2.5/in/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/2.5/in/88x31.png"></a></p></div></li></ul></div></footer><script src="/js/jquery.min.js"></script><script src="/js/tether.min.js"></script><script src="/js/bootstrap.min.js"></script><script src="/js/material.min.js"></script><script src="/js/ripples.min.js"></script><script src="/js/snackbar.min.js"></script><script src="/js/jquery.nouislider.min.js"></script><!--script(src='/js/jquery.cookie.js')--><script src="/js/main.js"></script></body></html>
