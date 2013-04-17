<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--- //----------------- Header for author information, css and rss -----------------// --->
  <title><mango:Blog title /> | <mango:Blog tagline /></title>
  <meta name="keywords" content="" />
  <meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
  <meta name="generator" content="Mango <mango:Blog version />" />
  <meta name="description" content="<mango:Blog description />" />
  <meta name="robots" content="index, follow" />
  <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />	
  <link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
  <link href="<mango:Blog skinurl />assets/styles/screen.css" rel="stylesheet" type="text/css" media="screen" title="default" />
  <link href="<mango:Blog skinurl />assets/styles/print.css" rel="stylesheet" type="text/css" media="print" />
<!--[if IE 6]>
  	<link href="<mango:Blog skinurl />assets/styles/ie6.css" rel="stylesheet" type="text/css" media="screen">
<![endif]-->

	<script type="text/javascript" src="<mango:Blog skinurl />assets/scripts/jquery-1.2.3.min.js"></script>
    <script type="text/javascript" src="<mango:Blog skinurl />assets/scripts/jquery.easing.min.js"></script>
    <script type="text/javascript" src="<mango:Blog skinurl />assets/scripts/jquery.lavalamp.min.js"></script>
    <script type="text/javascript">
        $(function() { $(".lavaLamp").lavaLamp({ fx: "backout", speed: 700 })});
    </script>
  <mango:Event name="beforeHtmlHeadEnd" />
</head>

<body>
<mango:Event name="beforeHtmlBodyStart" />

<!--- //----------------- Accessibility -----------------// --->
<ul id="accessibility">
    <li><a href="#postContent">Skip to content</a></li>
    <li><a href="#globalNav">Skip to navigation</a></li>
    <li><a href="#sidebar">Skip to sidebar</a></li>
	<li><a href="#footer">Skip to footer</a></li>
</ul>
  
  

<div id="wrapper">
<!--- //----------------- Heading And Branding -----------------// --->
<div id="header">
<div id="branding"><h1><a href="<mango:Blog basePath />"><mango:Blog title /> <span class="tagline"><mango:Blog tagline /></span></a></h1></div>
<div id="globalNav">
<!--Apply class=current to li so that item becomes selected automatically.-->
<ul class="lavaLamp">
	<li><a href="<mango:Blog basePath />">Home</a></li>
	<mango:Pages><mango:Page>
	<li<mango:PageProperty ifiscurrentpage> class="current"</mango:PageProperty>><a href="<mango:PageProperty link>" title="<mango:PageProperty title />"><mango:PageProperty title /></a></li>
	</mango:Page></mango:Pages>
</ul>
</div><!--End globalNav-->
</div><!--End Header-->



<!--- //----------------- Start Page Content -----------------// --->
<div id="contentWrapper">

<div id="postContent">

	<h1><mango:Message title /></h1>
	<div class="entry"><mango:Message text />
	<mango:Message data />
	</div>

<br class="clearfix" />
	
</div><!--End Post Content Block-->




<!--- //----------------- Sidebar Items -----------------// --->
<div id="sidebar">
<mango:Event name="afterSideBarStart" number="1" />
	
<div id="searchBlock">
	<form name="searchForm" id="searchForm" method="get" action="<mango:Blog searchUrl />">
		<input type="text" name="term" value="" id="term" />
		<input type="submit" value="Search" id="searchBTN" />
	</form>
</div>

<mango:Event name="beforeSideBarEnd" number="1" />	
</div><!--End Sidebar-->
</div><!--End ContentWrapper-->
<br class="clearfix" />
</div><!--End Wrapper-->



<!--- //----------------- Footer Content -----------------// --->

<cfinclude template="footer.cfm">

<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>
