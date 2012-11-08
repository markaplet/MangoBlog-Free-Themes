	<cfsilent><cfimport prefix="mango" taglib="../../tags/mango">
	<cfimport prefix="mangox" taglib="../../tags/mangoextras">
	<cfimport prefix="template" taglib="."></cfsilent>
	<cfif thisTag.executionMode EQ "start">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="index, follow" />
	
	<link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />	
	<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />

	<link rel="stylesheet" type="text/css" media="screen,projection" href="<mango:Blog skinurl />assets/css/style.css" />
	<link rel="stylesheet" type="text/css" media="print" href="<mango:Blog skinurl />assets/css/print.css" />
	<!--[if lte IE 7]>
		<link rel="stylesheet" href="css/ie.css" type="text/css" media="all" />
	<![endif]-->
	<!--[if IE 6]>
		<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
	<![endif]-->

	<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery.js"></script>
	<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery.scripts.js"></script>
	</cfif>