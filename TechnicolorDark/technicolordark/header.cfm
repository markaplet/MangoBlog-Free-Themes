<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
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