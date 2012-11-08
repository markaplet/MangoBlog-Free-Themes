<cfsilent><cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib="."></cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" class="bg-bg-home">
<head>
<mango:Page>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><mango:PageProperty title /> | <mango:Blog title /></title>
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
				<h2><a href="<mango:PageProperty link />"><mango:PageProperty title /></a></h2>
				<div class="entry">
					<mango:PageProperty body />
				</div>
			</div>
			<!--- //----------------- Comments -----------------// --->
			<div id="comments">
			<mango:PageProperty ifNotcommentsallowed ifCommentCountGT="0">
				<h3><mango:PageProperty commentCount /> response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty><mango:PageProperty ifCommentCountLT="1">s</mango:PageProperty> to &#8220;<mango:PageProperty title />&#8221;</h3>
				<ol class="comment-list">
				<mango:Comments>
				<mango:Comment>
					<li class="comment<mango:CommentProperty ifIsAuthor> author-comment</mango:CommentProperty><mango:CommentProperty ifCurrentIsOdd> alt</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
					<blockquote class="comment-body">
						<p>
							<mango:CommentProperty content />
						</p>
					</blockquote>
					<mangox:Gravatar size="40" defaultimg="assets/img/nogravatar.jpg" class="avatar" />
						<p class="commenter"><cite><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> ~ <a href="#comment-<mango:CommentProperty id />" class="datetime"><mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></a></cite></p>
					</li>
				</mango:Comment>
				</mango:Comments>
				</ol>
			<p class="notice">Comments now closed</p>
			</mango:PageProperty>
			</div>
			 
			<!--- //----------------- Response Form -----------------// ---> 
			<mango:PageProperty ifcommentsallowed>
			<div id="reply">
			<!--- //----------------- Errors -----------------// ---> 
 			<mango:Message ifMessageExists type="comment" status="error">
				<p class="error">There was a problem: <mango:Message text /></p>
			</mango:Message>
			<mango:Message ifMessageExists type="comment" status="success">
				<p class="success"><mango:Message text /></p>
			</mango:Message>
				<form action="#reply" method="post" id="commentform">
					<input type="hidden" name="action" value="addComment" />
					<input type="hidden" name="comment_post_id" value="<mango:PageProperty id />" />
					<input type="hidden" name="comment_parent" value="" />
					<ol>
						<li>
							<label for="author">Your Name <em>(required)</em></label>
							<input type="text" name="comment_name" id="author" class="required_Field" value="<mango:RequestVar name="comment_name" />" />
						</li>
						<li>
							<label for="email">Your Email Address <em>(required)</em></label>
							<input type="text" name="comment_email" id="email" class="required_Field" value="<mango:RequestVar name="comment_email" />" />
						</li>
						<li>
							<label for="url">Website URL</label>
							<input type="text" name="comment_website" id="url" value="<mango:RequestVar name="comment_website" />" />
						</li>
						<li>
							<label for="comment">Your Comment</label>
							<textarea name="comment_content" id="comment" cols="79" rows="6" ><mango:RequestVar name="comment_content" /></textarea>
						</li>
						<li class="reinline">	
							<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> 
							<label for="subscribe">Subscribe to this comment thread</label>
						</li>
					</ol>
					<mango:Event name="beforeCommentFormEnd" />
					<div class="buttons">
						<button type="submit">Submit Comments</button>
					</div>
				</form>
			</div>
			</mango:PageProperty>
		</div>
		<!--- //----------------- Sidebar -----------------// --->
		<div id="sidebar">
			<mango:Event name="afterSideBarStart" number="1" />
			<div id="pagemenu">
				<h2>Pages</h2>
				<template:pageMenu />
			</div>
			<template:sidebarPages />
			<mango:Event name="beforeSideBarEnd" number="1" />
		</div>
</div>
<!--- //----------------- Footer -----------------// --->
	<div id="footer">
		<mango:Event name="afterFooterStart" />
		<template:footer />
		<mango:Event name="beforeFooterEnd" />
	</div>
</mango:Page>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>