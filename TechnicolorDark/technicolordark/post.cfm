<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
</cfsilent><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--- //----------------- Header for author information, css and rss -----------------// --->
	<title><mango:Blog title /> | <mango:Blog tagline /></title>
<mango:Post>
	<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
	<meta name="generator" content="Mango <mango:Blog version />" />
<mango:PostProperty ifHasCustomField='meta-description'>
	<meta name="description" content="<mango:PostProperty customfield='meta-description' />" />
</mango:PostProperty>
<mango:PostProperty ifNotHasCustomField='meta-description'>
	<meta name="description" content="<mango:Blog description />" />
</mango:PostProperty>
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


	

		<div class="postHeader">
			<h1><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></h1>
			<p class="fl">Posted by <mango:PostProperty author /> on <mango:PostProperty date dateformat="mmmm dd, yyyy" /></p><p class="fr"><a href="<mango:PostProperty link />#comments" class="comments"><mango:PostProperty commentCount /> comments</a></p>
		</div>	
		
		<div class="entry">
		<mango:PostProperty body />
		
		<div class="entry-footer">
			<mango:Event name="beforePostContentEnd" template="post" mode="full" />
		</div>
		
		
		
<!--- //----------------- Comments Section -----------------// --->
<mango:PostProperty ifcommentsallowed>
  <h3 id="comments">Comments</h3>
  
  
<mango:Comments>
<mango:Comment> 
  		<div class="commentBlock<mango:CommentProperty ifIsAuthor> highlighted</mango:CommentProperty>">
			<div class="gravatar"><a <mango:CommentProperty ifhasurl>href="<mango:CommentProperty url />"</mango:CommentProperty> ><mangox:Gravatar size="40" defaultimg="assets/images/nogravatar.png" /></a></div>
			<div class="comment">
				<p><mango:CommentProperty ifhasurl><a href="<mango:CommentProperty url />" class="redlink"></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a> - <a href="#comment-<mango:CommentProperty id />"><mango:CommentProperty date dateformat="mm/dd/yy" /> <mango:CommentProperty time /></a></p>
				 <mango:CommentProperty content />
			</div>
			<br class="clearfix" />
		</div><!--End Comment Block--> 
</mango:Comment>
</mango:Comments>
		


<h3 id="respond">Leave Your Response</h3>

<!--- //----------------- Errors -----------------// ---> 
 <mango:Message ifMessageExists type="comment" status="error">
	<div class="error"><div class="msgtext"><h3>There was a problem:</h3> <mango:Message text /></div></div>
</mango:Message>
<mango:Message ifMessageExists type="comment" status="success">
		<div class="success"><div class="msgtext"><h3><mango:Message text /></h3></div></div>
</mango:Message>
	
	
	
	<form action="#respond" method="post" id="commentform">
	<input type="hidden" name="action" value="addComment" />
	<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
	<input type="hidden" name="comment_parent" value="" />
<mango:AuthenticatedAuthor ifIsLoggedIn>
	<p class="loggedinauthor">You are logged in as <mango:AuthorProperty name /></p>
	<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
	<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
	<input type="hidden" name="comment_website" value="<mango:Blog url />" />
</mango:AuthenticatedAuthor>
<mango:AuthenticatedAuthor ifNotIsLoggedIn>	
		<fieldset id="personalinfo">
		<legend><span>Tell us about yourself</span></legend>
			<div><label for="author">Your Name <em>(required field)</em></label><input type="text" name="comment_name" id="author" class="required_Field" value="<mango:RequestVar name="comment_name" />"></div>
			<div><label for="email">Your Email Address <em>(required field)</em></label><input type="text" name="comment_email" id="email" class="required_Field" value="<mango:RequestVar name="comment_email" />"></div>
			<div><label for="url">Website URL</label><input type="text" name="comment_website" id="url" value="<mango:RequestVar name="comment_website" />"></div>
		</fieldset>
</mango:AuthenticatedAuthor>
		<fieldset>
		<legend id="comPrefs"><span>Comment and preferences</span></legend>
			<div><label for="comment">Your Comment</label><textarea name="comment_content" id="comment" cols="70" rows="10" ><mango:RequestVar name="comment_content" /></textarea></div>
			<div><input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> <label for="subscribe">Subscribe to this comment thread</label></div>
			<div><mango:Event name="beforeCommentFormEnd" /></div>
		</fieldset>
		<div><button type="submit" id="submit-go">Submit</button></div>
	</form>

</mango:PostProperty>	



	
</div><!--End Entry Block -->
</mango:Post>

<br class="clearfix" />
	
</div><!--End Post Content Block-->




<!--- //----------------- Sidebar Items -----------------// --->
<div id="sidebar">
<mango:Event name="afterSideBarStart" number="1" />

<mangox:PodGroup locationId="sidebar" template="post">
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
