<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><mango:Blog title /> | <mango:Blog tagline /></title>
<cfinclude template="header.cfm">
<mango:Event name="beforeHtmlHeadEnd" />
</head>
<body>
<mango:Event name="beforeHtmlBodyStart" />
<div id="container">
	<!--- //----------------- Heading And Branding -----------------// --->
	<div id="header">
		<h1><a href="<mango:Blog basePath />" >
			<mango:Blog title />
			<span class="tagline">
			<mango:Blog tagline />
			</span></a></h1>
		<div id="mainNavigation">
			<ul>
				<li><a href="<mango:Blog basePath />">Home</a></li>
				<mango:Pages>
					<mango:Page>
						<li><a href="<mango:PageProperty link>" title="<mango:PageProperty title />">
							<mango:PageProperty title />
							</a></li>
					</mango:Page>
				</mango:Pages>
			</ul>
		</div>
		<br class="clearFix" />
		<!-- end #header -->
	</div>
	<!--- //----------------- Sidebar Items -----------------// --->
	<div id="sidebar">
		<mango:Event name="afterSideBarStart" number="1" />
			<mangox:PodGroup locationId="sidebar">
				<template:sidebar />
			</mangox:PodGroup>	
		<mango:Event name="beforeSideBarEnd" number="1" />
		<!-- end #sidebar -->
	</div>
	<!--- //----------------- Start Page Content -----------------// --->
	<div id="mainContent">

		<mango:Archive pageSize="3">
		<div id="archiveHead">
			<mango:ArchiveProperty ifIsType="category"><h3>Entries Tagged as '<mango:ArchiveProperty title />'</h3></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="month"><h3>Entries for month: <mango:ArchiveProperty title dateformat="mmmm yyyy"  /></h3></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="day"><h3>Entries for day: <mango:ArchiveProperty title dateformat="dd mmmm yyyy" /></h3></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="year"><h3>Entries for year: <mango:ArchiveProperty title dateformat="yyyy" /></h3></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="search"><h3>Search Results for <mango:ArchiveProperty title /></h3></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="author"><h3>Entries by '<mango:ArchiveProperty title />'</h3></mango:ArchiveProperty>
			<mango:ArchiveProperty ifIsType="unknown"><h3>No archives</h3></mango:ArchiveProperty>
		</div> 
		<mango:Posts count="3">
			<mango:Post>
				<div class="post">
					<h1><a href="<mango:PostProperty link />">
						<mango:PostProperty title />
						</a></h1>
					<mango:PostProperty ifhasExcerpt excerpt>
						<p><strong><a href="<mango:PostProperty link />">Read more...</a></strong></p>
					</mango:PostProperty>
					<mango:PostProperty ifnothasExcerpt body />
					<div class="postFooter">
						<p class="fl">Posted by
							<mango:PostProperty author />
							on
							<mango:PostProperty date dateformat="mmmm dd, yyyy" />
						</p>
						<p class="fr"><a href="<mango:PostProperty link />#comments" class="comments">
							<mango:PostProperty commentCount />
							comments</a></p>
					</div>
					<!-- end postFooter -->
				</div>
				<!-- end post -->
			</mango:Post>
		</mango:Posts>
		<!--- //----------------- Previous & Next -----------------// --->
		
			<mango:ArchiveProperty ifHasNextPage>
				<div id="prevNext" class="clearFix">
					<mango:ArchiveProperty ifHasPreviousPage><span class="fl"><a href="<mango:ArchiveProperty link pageDifference="-1" />" class="newer">Newer Topics</a></span></mango:ArchiveProperty>
					<mango:ArchiveProperty ifHasNextPage><span class="fr"><a href="<mango:ArchiveProperty link pageDifference="1" />" class="older">Older Topics</a></span></mango:ArchiveProperty>
				</div>
				<!--End prevNext-->
			</mango:ArchiveProperty>
		</mango:Archive>
		<!--End prevNext-->
		<!-- end #mainContent -->
	</div>
	<br class="clearFix" />
	<!--- //----------------- Footer Content -----------------// --->
	<cfinclude template="footer.cfm">
	<!-- end #container -->
</div>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>
