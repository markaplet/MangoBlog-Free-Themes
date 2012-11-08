<cfsilent><cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib="."></cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" class="bg-bg-home">
<head>
<mango:Author>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>About <mango:AuthorProperty name /> | <mango:Blog title /></title>
	<template:meta />
<mango:Event name="beforeHtmlHeadEnd" />
</head>
<body>
<mango:Event name="beforeHtmlBodyStart" />
	<!--- //----------------- Heading And Branding -----------------// --->
	<div id="header">
		<h1><a href="<mango:Blog basePath />"><mango:Blog title /></a> <span><mango:Blog tagline /></span></h1>
		<div id="nav-main">
			<ul>
				<li><a href="<mango:Blog basePath />">Home</a></li>
			<mango:Pages parentPage="">
				<mango:Page>
				<li<mango:PageProperty ifiscurrentpage> class="current"</mango:PageProperty>><a href="<mango:PageProperty link>"><mango:PageProperty title /></a></li>
				</mango:Page>
			</mango:Pages>
			</ul>
		</div>
		<a href="<mango:Blog rssurl />" class="rss">RSS Feeds</a>
	</div>
	<!--- //----------------- Main Content -----------------// --->
	<div id="main" class="group">
		<div id="content">
			<div class="post">
				<h2>About <mango:AuthorProperty name /></h2>
				<div class="entry">
					<mango:AuthorProperty description />
				</div>
			</div>
			
		</div>
		<!--- //----------------- Sidebar -----------------// --->
		<div id="sidebar">
			<mango:Event name="afterSideBarStart" number="1" />
			<div id="pagemenu">
				<h2>Pages</h2>
				<template:pageMenu />
			</div>
			<mango:Event name="beforeSideBarEnd" number="1" />
		</div>
</div>
<!--- //----------------- Footer -----------------// --->
	<div id="footer">
		<mango:Event name="afterFooterStart" />
		<template:footer />
		<mango:Event name="beforeFooterEnd" />
	</div>
</mango:Author>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>