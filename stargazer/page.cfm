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

<!--- //----------------- Start Page Content -----------------// --->
<div id="page">
	<div id="content">
	  
    <mango:Page>
			<div class="post">
				<h2 class="title"><mango:PageProperty title /></h2>
				<div class="entry"><mango:PageProperty body /></div>
			</div>
    
    		<!--- //----------------- Display if Page Comments Allowed -----------------// --->
        <mango:PageProperty ifNotcommentsallowed ifCommentCountGT="0">
        <h3 id="comments"><mango:PageProperty commentCount /> response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty><mango:PageProperty ifCommentCountLT="1">s</mango:PageProperty> to &#8220;<mango:PageProperty title />&#8221;</h3> 
        <ol class="commentlist">
          <mango:Comments>
            <mango:Comment>
            <li class="<mango:CommentProperty ifCurrentIsOdd>alt</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
            <cite><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty></cite> Says:
            <br />
            <small class="commentmetadata"><a href="#comment-<mango:CommentProperty id />" title=""><mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></a> </small>
            <mango:CommentProperty content />
            </li>
            </mango:Comment>
          </mango:Comments>
      </ol>
      <p>Comments now closed</p>
      </mango:PageProperty>
      <mango:PageProperty ifcommentsallowed>
        <h3 id="comments"><mango:PageProperty commentCount /> response<mango:PageProperty ifCommentCountGT="1">s</mango:PageProperty><mango:PageProperty ifCommentCountLT="1">s</mango:PageProperty> to &#8220;<mango:PageProperty title />&#8221;</h3> 
        <ol class="commentlist">
          <mango:Comments>
            <mango:Comment>
            <li class="<mango:CommentProperty ifCurrentIsOdd>alt</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
            <cite><mango:CommentProperty ifhasurl><a href='<mango:CommentProperty url />' rel='external nofollow'></mango:CommentProperty><mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty></cite> Says:
            <br />
            <small class="commentmetadata"><a href="#comment-<mango:CommentProperty id />" title=""><mango:CommentProperty date dateformat="mmm d, yyyy" /> at <mango:CommentProperty time /></a> </small>
            <mango:CommentProperty content />
            </li>
            </mango:Comment>
          </mango:Comments>
      </ol>
      
        <h2 id="respond">Leave a Reply</h2>
        <mango:Message ifMessageExists type="comment" status="error">
          <p class="error">There was a problem: <mango:Message text /></p>
        </mango:Message>
        <mango:Message ifMessageExists type="comment" status="success">
          <p class="sucess"><mango:Message text /></p>
        </mango:Message>
        
        <form method="post" action="#respond" id="commentform">
          <input type="hidden" name="action" value="addComment" />
          <input type="hidden" name="comment_post_id" value="<mango:PageProperty id />" />
          <input type="hidden" name="comment_parent" value="" />
          <p><input type="text" name="comment_name" id="author" value="<mango:RequestVar name="comment_name" />" /><label for="author"><strong>Name</strong> (required)</label></p>
          <p><input type="text" name="comment_email" id="email" value="<mango:RequestVar name="comment_email" />" /><label for="email"><strong>Mail</strong> (will not be published) (required)</label></p>
          <p><input type="text" name="comment_website" id="url" value="<mango:RequestVar name="comment_website" />" /><label for="url"><strong>Website</strong></label></p>
          <p><textarea name="comment_content" id="comment" cols="100%" rows="10" ><mango:RequestVar name="comment_content" /></textarea></p>
          <p><input type="checkbox" id="subscribe" name="comment_subscribe" value="1" /> <label for="subscribe">Subscribe to this comment thread</label></p>
          <p><mango:Event name="beforeCommentFormEnd" /></p>
          <p><input name="submit" type="submit" id="submit" value="Submit Comment" /></p>
      </form>
      </mango:PageProperty>	

      
     </mango:Page>

	</div>
	<!-- end #content -->
  
<!--- //----------------- Sidebar Items -----------------// --->
<div id="sidebar">
<mango:Event name="afterSideBarStart" number="1" template="page" />
<div id="search">
	<form id="searchform" method="get" action="<mango:Blog searchUrl />">
		<input type="text" name="term" id="term" size="15" />
		<input name="submit" type="submit" value="Search" />
	</form>
</div>
	<mangox:PodGroup locationId="sidebar-page">
		<mangox:TemplatePod id="page-menu">
      <h2>Page Navigation</span></h2>
		
		<template:pageMenu />
		
		</mangox:TemplatePod>
		
		<!--- output all the pods, including the ones added by plugins --->
	<mangox:Pods>
		<mangox:Pod>
			<mangox:PodProperty ifHasTitle>
				<mangox:Pod ifCurrentIsOdd><h3><span class="dark"><mangox:PodProperty title /></span></h3></mangox:Pod>
				<mangox:Pod ifCurrentIsEven><h3><mangox:PodProperty title /></h3></mangox:Pod>
			<mangox:PodProperty content />
			</mangox:PodProperty>
		</mangox:Pod>
		<mangox:Pod><!--- output the content as is, good for "templatePods" --->
			<mangox:PodProperty ifNotHasTitle>
				<mangox:PodProperty content />
			</mangox:PodProperty>
		</mangox:Pod>
	</mangox:Pods>
	
	</mangox:PodGroup>
	<mango:Event name="beforeSideBarEnd" number="1" template="page" />	
</div>
	<!-- end #sidebar -->
	<div style="clear: both;">&nbsp;</div>
  
</div>  
<!-- end #page -->
<hr />

<!--- //----------------- Footer -----------------// --->
<div id="footer">
  <mango:Event name="afterFooterStart" />
	<p>Powered by <a href="http://www.mangoblog.org" title="Mango Blog - A ColdFusion blog engine">Mango Blog</a> &copy; <mango:Blog date dateformat="yyyy" /> <mango:Blog title /> &bull; Original design by: <a href="http://www.nodethirtythree.com/">NodeThirtyThree Design</a>.</p>
  <mango:Event name="beforeFooterEnd" />
</div>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>
