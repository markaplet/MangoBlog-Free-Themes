<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
</cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<mango:Post>
<title><mango:PostProperty title /> &#8212; <mango:Blog title /></title>
<meta name="generator" content="Mango <mango:Blog version />" />
<mango:PostProperty ifHasCustomField='meta-description'>
<meta name="description" content="<mango:PostProperty customfield='meta-description' />" />
</mango:PostProperty>
<mango:PostProperty ifNotHasCustomField='meta-description'>
<meta name="description" content="<mango:Blog description />" />
</mango:PostProperty>
<meta name="robots" content="index, follow" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />
<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />	
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/screen.css" type="text/css" media="screen, projection">
<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/print.css" type="text/css" media="print">
<!--[if IE]>
  <link rel="stylesheet" href="<mango:Blog skinurl />assets/css/ie.css" type="text/css" media="screen, projection">
<![endif]-->
<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/style.css" type="text/css" media="screen, projection">
<mango:Event name="beforeHtmlHeadEnd" />
</head>

<body>
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
	
	<div id="maincontent" class="span-15 prefix-1">

<!-- begin post output -->

		<h1><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a></h1>
		<p class="meta">Posted By: <mango:PostProperty author /> <mango:PostProperty ifcommentsallowed><a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />"><mango:PostProperty ifCommentCountGT="0"><mango:PostProperty commentCount /> Comment<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty></mango:PostProperty><mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty></a></mango:PostProperty> <span><mango:PostProperty date dateformat="mmmm dd, yyyy" /></span></p>
		
		<mango:PostProperty body />

	<div class="entry-footer">
		<mango:Event name="beforePostContentEnd" template="index" mode="excerpt" />			
	</div>
	
	<p class="tagged"><strong>Tags:</strong> <mango:Categories><mango:Category><a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a> <mango:Category ifCurrentIsNotLast>&middot; </mango:Category></mango:Category></mango:Categories></p>
<!-- end post output -->

		<!-- start comments -->
			<div id="comments">
				<h3 class="comments_headers">
					<mango:PostProperty commentCount />
					comments
					<mango:PostProperty ifcommentsallowed> so far &darr;</mango:PostProperty>
				</h3>
					<mango:PostProperty ifcommentsallowed ifCommentCountLT="1">
					<!-- If comments are open, but there are no comments. -->
						<p class="notice">There are no comments yet... You can be the first to leave a comment and kick start the conversation.</p>
					</mango:PostProperty>
				<ul id="comment_list">
					<mango:Comments>
						<mango:Comment>
							<li class="comment <mango:CommentProperty ifIsAuthor> highlighted</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
								<div class="comment_meta"><span class="comment_num"><a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment"><mango:CommentProperty currentCount /></a></span><strong>
									<mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a> 
									</mango:CommentProperty></strong><span class="comment_time"> // <mango:CommentProperty date dateformat="mmm d, yyyy" />at<mango:CommentProperty time /></span></div>
								<div class="entry"><mango:CommentProperty content /></div>
							</li>
						</mango:Comment>
					</mango:Comments>
				</ul>
				<mango:PostProperty ifcommentsallowed>
					<!-- Comment Form -->
					<h3 id="respond" class="comments_headers">Leave a Comment</h3>
					<mango:Message ifMessageExists type="comment" status="error">
					<p class="error"><strong>Oops... The following fields are required to post a comment:</strong>
						<mango:Message text />
					</p>
					</mango:Message>
					<mango:Message ifMessageExists type="comment" status="success">
					<p class="success">
						<mango:Message text />
					</p>
					</mango:Message>
					<form method="post" action="#respond" id="comment_form">
						<input type="hidden" name="action" value="addComment" />
						<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
						<input type="hidden" name="comment_parent" value="" />
						<mango:AuthenticatedAuthor ifIsLoggedIn>
							<div>You are logged in as <mango:AuthorProperty name /></div>
							<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
							<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
							<input type="hidden" name="comment_website" value="<mango:Blog url />" />
						</mango:AuthenticatedAuthor>
						<mango:AuthenticatedAuthor ifNotIsLoggedIn>
							<div>
								<input id="author" class="text_input" type="text" name="comment_name" value="<mango:RequestVar name='comment_name' />" />
								<label for="author"><strong>Name</strong></label>
							</div>
							<div>
								<input class="text_input" type="text" id="email" name="comment_email" value="<mango:RequestVar name='comment_email' />" />
								<label for="email"><strong>Mail</strong> (it will not be displayed)</label>
							</div>
							<div>
								<input class="text_input" type="text" id="url" name="comment_website" size="30" value="<mango:RequestVar name='comment_website' />"  />
								<label for="url"><strong>Website</strong></label>
							</div>
						</mango:AuthenticatedAuthor>
						<div>
							<textarea class="text_input text_area" id="comment" name="comment_content" rows="7" cols="60"><mango:RequestVar name="comment_content" />
</textarea>
						</div>
						<div>
							<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" />
							<label for="subscribe">Subscribe to this comment thread</label>
						</div>
						<div>
							<mango:Event name="beforeCommentFormEnd" />
						</div>
						<div>
							<!--<input name="submit" class="form_submit" type="submit" id="submit" src="<mango:Blog skinurl />assets/images/btn-submit-comment.png" value="Submit" />-->
							<button type="submit" class="submitcomment">Submit your comment</button>
						</div>
					</form>
				</mango:PostProperty>
			</div>
		<!-- end comments -->

	</div><!-- end .maincontent -->
</mango:Post>
	<!--Begin Sidebar-->
	<div id="sidebar" class="span-6 prefix-1">
		<mangox:PodGroup locationId="sidebar" template="post">
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
		<p>Blue Mango Theme Design By <a href="http://www.visual28.com">Mark Aplet</a></p>
		<p>Super Powered by <a href="http://mangoblog.org">Mango Blog</a></p>
	</div>

</div><!-- end .container -->
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>