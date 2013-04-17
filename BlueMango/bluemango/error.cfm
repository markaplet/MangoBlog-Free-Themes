<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
</cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><mango:Message title /> &#8212; Error</title>
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
	</ul>
	
	<div id="header">
		<h1 class="unitPng"><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
		<h2><mango:Blog tagline /></h2>
	</div>
	
	<div id="maincontent" class="span-15 prefix-1">

<!-- begin generic output -->

		<h1><mango:Message title /></h1>
		
		<mango:Message text />
		<mango:Message data />
	
<!-- end generic output -->

	</div><!-- end .maincontent -->

	<!--Begin Sidebar-->
	<div id="sidebar" class="span-6 prefix-1">
		
	</div>
	<!--End Sidebar-->
	
	<div id="footer" class="span-24 clear last">
	
	</div><!--end .footer-->
	
	<div id="themecredits" class="span-24">
		<p>Blue Mango Theme Design By <a href="http://www.visual28.com">Mark Aplet</a></p>
		<p>Super Powered by <a href="http://mangoblog.org">Mango Blog</a></p>
	</div>

</div><!-- end .container -->
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>