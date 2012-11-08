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
<!--- //----------------- Generic Content -----------------// --->
			<h2 class="title"><mango:Message title /></h2>
			
      <mango:Message text />
			<mango:Message data />
   
	</div>
	<!-- end #content -->
	
  
 
  
  
  
  
  <div id="sidebar">
  <!--- //----------------- Sidebar Events -----------------// --->
  <mango:Event name="afterSideBarStart" number="1" />
		<ul>
			<li id="search">                          
				<form id="searchform" method="get" action="<mango:Blog searchUrl />">
					<div>
						<input type="text" name="term" id="term" size="15" />
						<input name="submit" type="submit" value="Search" />
					</div>
				</form>
			</li>
			<li>
				<h2>Categories</h2>
				<ul>
		<mango:Categories>
		<mango:Category>
           <li class="module-list-item"><a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title>"><mango:CategoryProperty title /></a></li>
		</mango:Category>
		</mango:Categories>
				</ul>
        
        <h2>Archives</h2>
				<ul>
		<mango:Archives type="month">
    <mango:Archive>
       			<li class="module-list-item"><a href="<mango:ArchiveProperty link />"><mango:ArchiveProperty title dateformat="mmmm yyyy" /></a></li>
		</mango:Archive>
    </mango:Archives>
				</ul>
        
        <h2>Recent Posts</h2>
				<ul>
		<mango:Posts count="5">
    <mango:Post>
					<li class="module-list-item"><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></li>
    </mango:Post>
    </mango:Posts>
				</ul>
        
        
     <mangox:LinkCategories>
		 <mangox:LinkCategory>
					<h2><mangox:LinkCategoryProperty name /></h2>
				
        </mangox:LinkCategory>
        	<ul>
				<mangox:Links>
							<mangox:Link>
							<li class="module-list-item"><a href="<mangox:LinkProperty address />" title="<mangox:LinkProperty title />"><mangox:LinkProperty title /></a></li>
	           </mangox:Link>
				</mangox:Links>
					</ul>
			</mangox:LinkCategories>    
			</li>
		</ul>
    
    <div class="feedSubscribe"><a href="<mango:Blog atomurl />">Subscribe to this blog's feed</a></div>
                         
		<div style="clear: both; height: 40px;">&nbsp;</div>
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
