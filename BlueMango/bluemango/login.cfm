<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
</cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login &#8212; <mango:Blog title /></title>
<meta name="generator" content="Mango <mango:Blog version />" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />
<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />	
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/screen.css" type="text/css" media="screen, projection">
<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/print.css" type="text/css" media="print">
<!--[if IE]>
  <link rel="stylesheet" href="<mango:Blog skinurl />assets/css/ie.css" type="text/css" media="screen, projection">
<![endif]-->
<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/style.css" type="text/css" media="screen, projection">
<meta name="robots" content="noindex, nofollow" />
<mango:Event name="beforeHtmlHeadEnd" />
</head>

<body class="page">
<mango:Event name="beforeHtmlBodyStart" />
<div class="container">
	
	<ul id="topnav">
		<li><a href="#maincontent" class="skiplink">Skip to content</a></li>
		<li><a href="<mango:Blog basePath />" class="current">Home</a></li>
		<mango:Pages><mango:Page>
		<li><a href="<mango:PageProperty link>"><mango:PageProperty title /></a></li>
		</mango:Page></mango:Pages>
	</ul>
	
	<div id="header">
		<h1 class="unitPng"><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
		<h2><mango:Blog tagline /></h2>
	</div>
	
	<div id="maincontent" class="span-23 prefix-1">

<!-- begin login output -->

		<h1>Please Login</h1>
		
		<mango:RequestVar ifExists="errormsg">
				<p class="error"><mango:RequestVar name="errormsg" /></p>
			</mango:RequestVar>
		<cfoutput><form action="<mangox:Environment selfUrl />" method="post" id="login_form"></cfoutput>
	
				<label for="username">Username:</label>
				<p>
				<input name="username" id="username" value="" size="22" type="text" class="text_input">
				</p>
				<p>
				<label for="password">Password:</label><br />
				<input name="password" id="password" value="" size="22" type="password" class="text_input">
				</p>
				<input name="login" class="form_submit" type="submit" id="submit" src="<mango:Blog skinurl />assets/images/btn-submit.png" value="Login" />
			</form>
	
<!-- end login output -->

	</div><!-- end .maincontent -->

	<!--Begin Sidebar-->
	<div id="sidebar" class="span-6 prefix-1">
		
	</div>
	<!--End Sidebar-->
	
	<div id="footer" class="span-24 clear last">
		<p class="top span-24">[ <a href="#header" class="anchorSlide">TOP</a> ]</p>
	</div><!--end .footer-->
	
	<div id="themecredits" class="span-24">
		<p>Blue Mango Theme Design By <a href="http://www.visual28.com">Mark Aplet</a></p>
		<p>Super Powered by <a href="http://mangoblog.org">Mango Blog</a></p>
	</div>

</div><!-- end .container -->
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>