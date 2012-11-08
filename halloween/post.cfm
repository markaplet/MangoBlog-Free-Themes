<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><mango:Post><mango:PostProperty title /></mango:Post> | <mango:Blog title /></title>
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
		
<mango:Post>
<div class="post">

<h1><mango:PostProperty title /></h1>
			
<mango:PostProperty body />
		
		
		
		
<!--- //----------------- Comments Section -----------------// --->
<mango:PostProperty ifcommentsallowed>
  <h3 id="comments">Comments</h3>

  
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
	<!--- //----------------- Errors -----------------// --->  
	<mango:Message ifMessageExists type="comment" status="error">
		<p class="error"><strong>There was a problem:</strong> <mango:Message text /></p>
	</mango:Message>
	<mango:Message ifMessageExists type="comment" status="success">
		<p class="success"><mango:Message text /></p>
	</mango:Message>
	
	
	
	<form action="#respond" method="post" id="commentform">
	<input type="hidden" name="action" value="addComment" />
	<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
	<input type="hidden" name="comment_parent" value="" />
		<fieldset id="personalinfo">
		<legend><span>Tell us about yourself</span></legend>
			<div><label for="author">Your Name <em>(required field)</em></label><input type="text" name="comment_name" id="author" class="required_Field" value="<mango:RequestVar name="comment_name" />"></div>
			<div><label for="email">Your Email Address <em>(required field)</em></label><input type="text" name="comment_email" id="email" class="required_Field" value="<mango:RequestVar name="comment_email" />"></div>
			<div><label for="url">Website URL</label><input type="text" name="comment_website" id="url" value="<mango:RequestVar name="comment_website" />"></div>
		</fieldset>
		<fieldset>
		<legend id="comPrefs"><span>Comment and preferences</span></legend>
			<div><label for="comment">Your Comment</label><textarea name="comment_content" id="comment" cols="70" rows="10" ><mango:RequestVar name="comment_content" /></textarea></div>
			<div><input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /><label for="subscribe">Subscribe to this comment thread</label></div>
			<div><mango:Event name="beforeCommentFormEnd" /></div>
		</fieldset>
		<div><button type="submit" id="submit-go">Submit</button></div>
	</form>

</mango:PostProperty>
</mango:Post>
</div><!--End post -->		
		
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
