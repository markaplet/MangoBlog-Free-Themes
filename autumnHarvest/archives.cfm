<cfsilent><cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib="."></cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" class="bg-bg-home">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><mango:Archive><mango:ArchiveProperty ifIsType="category">Entries Tagged as '<mango:ArchiveProperty title />'</mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="month">Entries for month: <mango:ArchiveProperty title dateformat="mmmm yyyy"  /></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="day">Entries for day: <mango:ArchiveProperty title dateformat="dd mmmm yyyy" /></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="year">Entries for year: <mango:ArchiveProperty title dateformat="yyyy" /></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="search">Search Results for <mango:ArchiveProperty title /></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="author">Entries by '<mango:ArchiveProperty title />'</mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="unknown">No archives</mango:ArchiveProperty></mango:Archive></title>
	
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
		<mango:Archive pageSize="3">
		<mango:Posts count="3">
			<mango:Post>
	
			<div class="post">
				<h2><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h2>
				<div class="meta">
					<mango:Author><span class="credits">Posted By: <a href="<mango:AuthorProperty link />"><mango:PostProperty author /></a></span></mango:Author>
					<span class="comments"><a href="<mango:PostProperty link />#comments"><mango:PostProperty commentCount /> Comments</a></span>
				</div>
				<div class="entry">
					<mango:PostProperty ifnothasExcerpt body />
					<mango:PostProperty ifhasExcerpt excerpt>
					<p><strong><a href="<mango:PostProperty link />">Read more...</a></strong></p>
					</mango:PostProperty>
				</div>
				<div class="hr"><hr /></div>
			</div>
			
			</mango:Post>
		</mango:Posts>
		</mango:Archive>
		<!--- //----------------- Previous & Next -----------------// --->
		<mango:Archive pageSize="3">
			<mango:ArchiveProperty ifHasNextPage><a class="left more" href="<mango:ArchiveProperty link pageDifference="1" />">Older Entries</a></mango:ArchiveProperty>
 			<mango:ArchiveProperty ifHasPreviousPage><a class="right more" href="<mango:ArchiveProperty link pageDifference="-1" />">Newer Entries</a></mango:ArchiveProperty>
		</mango:Archive>
		</div>
			
		<!--- //----------------- Sidebar -----------------// --->
		<div id="sidebar">
			<mango:Event name="afterSideBarStart" number="1" />
			<template:sidebar />
			<mango:Event name="beforeSideBarEnd" number="1" />
		</div>
</div>
<!--- //----------------- Footer -----------------// --->
	<div id="footer">
		<mango:Event name="afterFooterStart" />
		<template:footer />
		<mango:Event name="beforeFooterEnd" />
	</div>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>