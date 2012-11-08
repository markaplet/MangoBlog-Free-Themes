<!--- //----------------- Include the mango tag libraries -----------------// --->
<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : StarGazer
Description: Fixed-width, two-column design suitable for small sites and blogs.
Version    : 1.0
Released   : 20071222

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title><mango:Blog title /></title>
	<!--- //----------------- Header for author information, css and rss -----------------// --->
  <meta name="keywords" content="" />
  <meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
  <meta name="generator" content="Mango <mango:Blog version />" />
  <meta name="description" content="<mango:Blog description />" />
  <meta name="robots" content="index, follow" />
  <link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />
  <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />	
  <link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
  <link rel="stylesheet" href="<mango:Blog skinurl />assets/css/style.css" type="text/css" media="screen" />
  <link href="<mango:Blog skinurl />assets/css/print.css" rel="stylesheet" type="text/css" media="print" /> 

  <mango:Event name="beforeHtmlHeadEnd" />
  <link rel="stylesheet" href="<mango:Blog skinurl />assets/css/colorcoding.css" type="text/css" media="screen" />
</head>
<body>
<mango:Event name="beforeHtmlBodyStart" />
<div id="header">
	<h1><a href="<mango:Blog basePath />"><mango:Blog title /></a></h1>
	<h2><mango:Blog tagline /></h2>
</div>
<div id="menu">
	<ul>
    <li><a href="<mango:Blog basePath />" title="Back to homepage">Homepage</a></li>
    <mango:Pages><mango:Page><li><a href="<mango:PageProperty link>" title="<mango:PageProperty title />"><mango:PageProperty title /></a></li></mango:Page></mango:Pages>
	</ul>
</div>
<hr />

<div id="page">
	<div id="content">
<mango:Post>	
    <div class="post" id="post-<mango:PostProperty id />">
			<h2 class="title"><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></h2>
			<div class="entry">
					<mango:PostProperty body />
			</div>
			<p class="meta"><span class="byline">Posted by <mango:PostProperty author /> on <mango:PostProperty date dateformat="mmmm dd, yyyy" /> <mango:PostProperty time /></span> 
      <a href="<mango:PostProperty link />#comments" class="comments"><mango:PostProperty commentCount /> comments</a></p>
		</div><!-- end post -->

  
  <!--- //----------------- Comments Section -----------------// --->
<mango:PostProperty ifcommentsallowed>
  <h2 id="comments">Comments</h2>


<!--- //----------------- Errors -----------------// ---> 
 <mango:Message ifMessageExists type="comment" status="error">
		<p class="error">There was a problem: <mango:Message text /></p>
</mango:Message>
<mango:Message ifMessageExists type="comment" status="success">
		<p class="succss"><mango:Message text /></p>
</mango:Message> 

  
<mango:Comments>
<mango:Comment><a name="comment-<mango:CommentProperty id />"></a>
	<div class="commentblock<mango:CommentProperty ifIsAuthor> highlighted</mango:CommentProperty>">
	<a <mango:CommentProperty ifhasurl>href="<mango:CommentProperty url />"</mango:CommentProperty> class="thumb"><mangox:Gravatar size="40" defaultimg="assets/images/no_gravatar.gif" class="fl" /></a>
				
	<p><mango:CommentProperty ifhasurl><a href="<mango:CommentProperty url />"></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> wrote on <a href="#comment-<mango:CommentProperty id />"><mango:CommentProperty date dateformat="mm/dd/yy" /> <mango:CommentProperty time /></a></p>
	 
	 <mango:CommentProperty content />
</mango:Comment>
	</div>
</mango:Comments>
	
		



	<h2 id="respond">Leave a comment</h2>
	<mango:Message ifMessageExists type="comment" status="error">
		<p class="error">There was a problem: <mango:Message text /></p>
	</mango:Message>
	<mango:Message ifMessageExists type="comment" status="success">
		<p class="success"><mango:Message text /></p>
	</mango:Message>
	
	<form method="post" action="#respond" id="commentform">
		<input type="hidden" name="action" value="addComment" />
		<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
		<input type="hidden" name="comment_parent" value="" />
		<p><input type="text" name="comment_name" id="author" value="<mango:RequestVar name="comment_name" />" /><label for="author"><strong>Name</strong> (required)</label></p>
		<p><input type="text" name="comment_email" id="email" value="<mango:RequestVar name="comment_email" />" /><label for="email"><strong>Mail</strong> (will not be published) (required)</label></p>
		<p><input type="text" name="comment_website" id="url" value="<mango:RequestVar name="comment_website" />" /><label for="url"><strong>Website</strong></label></p>
		<p><textarea name="comment_content" id="comment" cols="70" rows="10" /><mango:RequestVar name="comment_content" /></textarea></p>
		<p><input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> <label for="subscribe">Subscribe to this comment thread</label></p>
		<p><mango:Event name="beforeCommentFormEnd" /></p>
		<p><input name="submit" type="submit" id="submit" value="Submit Comment" /></p>
</form>
</mango:PostProperty>	
  
 </mango:Post>
</div>






<!--- //----------------- Sidebar Items -----------------// --->
<div id="sidebar">
<mango:Event name="afterSideBarStart" number="1" />
	<template:sidebar />
<mango:Event name="beforeSideBarEnd" number="1" />	
</div>
	<!-- end #sidebar -->
	<div style="clear: both;">&nbsp;</div>
	
	
	
	
	
	
</div>
<!-- end #page -->
<hr />
<div id="footer">
<!--- //----------------- Footer Events -----------------// --->
  <mango:Event name="afterFooterStart" />
	<p>Powered by <a href="http://www.mangoblog.org" title="Mango Blog - A ColdFusion blog engine">Mango Blog</a> &copy; <mango:Blog date dateformat="yyyy" /> <mango:Blog title /> &bull; Original design by: <a href="http://www.nodethirtythree.com/">NodeThirtyThree Design</a>.</p>
  <mango:Event name="beforeFooterEnd" />
</div>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>
