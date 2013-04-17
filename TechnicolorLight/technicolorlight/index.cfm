<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
</cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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

<mango:Posts count="3">
	<mango:Post>

		<div class="postHeader">
			<h1><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></h1>
			<p class="fl">Posted by <mango:PostProperty author /> on <mango:PostProperty date dateformat="mmmm dd, yyyy" /></p><p class="fr"><a href="<mango:PostProperty link />#comments" class="comments"><mango:PostProperty commentCount /> comments</a></p>
		</div>	
		
		<div class="entry">
		<mango:PostProperty ifhasExcerpt excerpt>
		<p><a href="<mango:PostProperty link />" class="more">Read more...</a></p>
		</mango:PostProperty>
		<mango:PostProperty ifnothasExcerpt body />
		
		<div class="entry-footer">
			<mango:Event name="beforePostContentEnd" template="index" mode="excerpt" />			
		</div>
	
		<p class="tagged"><span class="add_comment"><mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />">Respond Now</a></mango:PostProperty></span><strong>Tags:</strong> <mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories></p>
		
		</div><!--End Entry Block -->
		
		

	</mango:Post>
</mango:Posts>

<mango:Archive pageSize="3"><mango:ArchiveProperty ifHasNextPage>
<div id="prevNext"><span class="fl"><a href="<mango:ArchiveProperty link pageDifference="1" />" class="older">Older Topics</a></span><br class="clearfix" /></div><!--End prevNext-->
</mango:ArchiveProperty></mango:Archive>


<br class="clearfix" />
	
</div><!--End Post Content Block-->




<!--- //----------------- Sidebar Items -----------------// --->
<div id="sidebar">
<mango:Event name="afterSideBarStart" number="1" />

		<mangox:PodGroup locationId="sidebar" template="index">
			<mangox:TemplatePod id="blog-description" title="About">
			<p><mango:Blog description descriptionParagraphFormat /></p>
			</mangox:TemplatePod>
			<template:sidebar />
		</mangox:PodGroup>

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
