<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
</cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Archives &#8212; <mango:Blog title /></title>
<meta name="generator" content="Mango <mango:Blog version />" />
<meta name="description" content="<mango:Blog tagline />" />
<meta name="robots" content="index, follow" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />
<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />	
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />

<!--EDIT THIS LINE WITH YOUR OWN KERNEST CODE-->
<link href="http://kernest.com/your-domain.css" media="screen" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/screen.css" type="text/css" media="screen, projection" />
<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/print.css" type="text/css" media="print" />
<!--[if IE]>
  <link rel="stylesheet" href="<mango:Blog skinurl />assets/css/ie.css" type="text/css" media="screen, projection" />
<![endif]-->
<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/style.css" type="text/css" media="screen, projection" />
<mango:Event name="beforeHtmlHeadEnd" />
</head>

<body>
<mango:Event name="beforeHtmlBodyStart" />
<div class="container">
	
	<ul id="topnav">
		<li><a href="#maincontent" class="skiplink anchorSlide">Skip to content</a></li>
		<li class="current"><a href="<mango:Blog basePath />">Blog</a></li>
		<mango:Pages><mango:Page>
		<li><a href="<mango:PageProperty link>"><mango:PageProperty title /></a></li>
		</mango:Page></mango:Pages>
	</ul>
	
	<div id="header">
		<h1><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
		<h2><mango:Blog tagline /></h2>
	</div>
	
	<div id="maincontent" class="span-15">

<!-- begin post output -->
<mango:Archive pageSize="5">
	<mango:ArchiveProperty ifIsType="category"><h4 class="archive_head fancy center">Entries Tagged as &#8220;<mango:ArchiveProperty title />&#8221;</h4></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="month"><h4 class="archive_head fancy center">Entries for month: &#8220;<mango:ArchiveProperty title dateformat="mmmm yyyy"  />&#8221;</h4></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="day"><h4 class="archive_head fancy center">Entries for day: &#8220;<mango:ArchiveProperty title dateformat="dd mmmm yyyy" />&#8221;</h4></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="year"><h4 class="archive_head fancy center">Entries for year: &#8220;<mango:ArchiveProperty title dateformat="yyyy" />&#8221;</h4></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="search"><h4 class="archive_head fancy center">Search Results for &#8220;<mango:ArchiveProperty title format="escapedHtml" />&#8221;</h4></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="author"><h4 class="archive_head fancy center">Entries by &#8220;<mango:ArchiveProperty title />&#8221;</h4></mango:ArchiveProperty>
	<mango:ArchiveProperty ifIsType="unknown"><h4 class="archive_head fancy center">No archives</h4></mango:ArchiveProperty>
		
<mango:Posts count="5">
<mango:Post>
		<h1><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h1>
		<p class="meta">Posted By: <mango:PostProperty author /> <mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#comments" title="Comments on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty> <span><mango:PostProperty date dateformat="mmmm dd, yyyy" /></span></p>
		
		<mango:PostProperty ifhasExcerpt excerpt>
		<p><a href="<mango:PostProperty link />" title="Read the rest of this entry" class="readmore fancy">Read More...</a></p>
		</mango:PostProperty>
		<mango:PostProperty ifNotHasExcerpt body />

	<div class="entry-footer">
		<mango:Event name="beforePostContentEnd" template="index" mode="excerpt" />			
	</div>
	
	<p class="tagged"><span class="add_comment"><mango:PostProperty ifcommentsallowed>&rarr; <a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />">Respond Now</a></mango:PostProperty></span><strong>Tags:</strong> <mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories></p>

</mango:Post>
</mango:Posts>
<!-- end post output -->


<div class="prevnext">
	<div class="previous"><mango:ArchiveProperty ifHasNextPage><a class="previous" href="<mango:ArchiveProperty link pageDifference="1" />"><img src="<mango:Blog skinurl />assets/images/btn-prev.png" width="189" height="23" alt="Previous Enteries" /></a></mango:ArchiveProperty></div>
	<div class="next"><mango:ArchiveProperty ifHasPreviousPage><a href="<mango:ArchiveProperty link pageDifference="-1" />"><img src="<mango:Blog skinurl />assets/images/btn-next.png" width="189" height="23" alt="Next Enteries" /></a></mango:ArchiveProperty></div>
</div>
</mango:Archive>

	</div><!-- end .maincontent -->
	
	<!--Begin Sidebar-->
	<div id="sidebar" class="span-7 prefix-1">
		<mangox:PodGroup locationId="sidebar-archives" template="archives">
			<template:sidebar />
		</mangox:PodGroup>	
	</div>
	<!--End Sidebar-->
	
	<div id="footer" class="span-24 clear last">
	<mango:Event name="afterFooterStart" />
		<!-- Recent Posts Start -->
		<div class="span-7">
			<h3>Recent Posts</h3>
			<ul><mango:Posts count="5"><mango:Post>
				<li><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent link to <mango:PostProperty title />"><mango:PostProperty title /></a><br /><small><mango:PostProperty date dateformat="m-d-yyyy" /></small></li>
			</mango:Post></mango:Posts></ul>
		</div>
		<!-- Recent Posts End -->
		
		<!-- Recent Comments Start -->
		<div class="span-7 prefix-1">
			<h3>Recent Comments</h3>
			<ul><mango:Comments recent count="4"><mango:Comment>
				<li><strong><a href="<mango:CommentProperty entryLink />#comment-<mango:CommentProperty id />" title="on <mango:CommentProperty entryTitle />"><mango:CommentProperty name /></a></strong>: <mango:CommentProperty excerptChars="80" /></li>
			</mango:Comment></mango:Comments></ul>
		</div>
		<!-- Recent Comments End -->
	
		<!--About Start-->
		<div class="span-7 prefix-1">
			<h3>About This Blog</h3>
			<p><mango:Blog description descriptionParagraphFormat /></p>
		</div>
		<!--About End-->
		
		<p class="top span-24">[ <a href="#header" class="anchorSlide">TOP</a> ]</p>
		<mango:Event name="beforeFooterEnd" />
	</div><!--end .footer-->
	
	<div id="themecredits" class="span-24">
		<p>Theme Design By <a href="http://mangowear.com">MangoWear</a></p>
		<p>Super Powered by <a href="http://mangoblog.org">Mango Blog</a></p>
	</div>

</div><!-- end .container -->
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>