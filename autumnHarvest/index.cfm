<cfsilent><cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib="."></cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" class="bg-bg-home">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><mango:Blog title /> | <mango:Blog tagline /></title>
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
			<mango:Pages>
				<mango:Page>
				<li><a href="<mango:PageProperty link>"><mango:PageProperty title /></a></li>
				</mango:Page>
			</mango:Pages>
			</ul>
		</div>
		<a href="<mango:Blog rssurl />" class="rss">RSS Feeds</a>
	</div>
	<!--- //----------------- Main Content -----------------// --->
	<div id="main" class="group">
		<div id="content">
		<mango:Posts count="3"><mango:Post>
			<div class="post">
				<h2><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></h2>
				<div class="meta">
					<mango:Author><span class="credits">Posted By: <a href="<mango:AuthorProperty link />"><mango:PostProperty author /></a></span></mango:Author>
					<span class="comments"><a href="<mango:PostProperty link />#comments"><mango:PostProperty commentCount /> Comments</a></span>
				</div>
				<div class="entry">
					<mango:PostProperty ifhasExcerpt excerpt>
						<p><strong><a href="<mango:PostProperty link />">Read more...</a></strong></p>
					</mango:PostProperty>
					<mango:PostProperty ifnothasExcerpt body />
				</div>
			</div>
			</mango:Post></mango:Posts>
			<!--- //----------------- Previous & Next -----------------// --->
			<mango:Archive pageSize="3">
			<mango:ArchiveProperty ifHasNextPage>
				<div id="prevNext"><a href="<mango:ArchiveProperty link pageDifference="1" />" class="more">Older Topics</a></div>
			</mango:ArchiveProperty>
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