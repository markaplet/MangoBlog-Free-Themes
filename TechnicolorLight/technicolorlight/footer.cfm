<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
</cfsilent>
<div id="footerWrapper">
<div id="footer">
<mango:Event name="afterFooterStart" />

	<!-- Categories Start -->
	<div id="browseCategories" class="footerContainer"><h3>Browse Categories</h3>
	<ul>
		<mango:Categories>
		<mango:Category>
		<li><a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title>"><mango:CategoryProperty title /></a> (<mango:CategoryProperty postCount />)</li>
		</mango:Category>
		</mango:Categories>
	</ul>
	</div><!-- Categories End -->
	
	
	<!-- Recent Comments Start -->
	<div id="recentComments" class="footerContainer"><h3>Recent Comments</h3>
	<ul>
	<mango:Comments recent count="4"><mango:Comment>
	<li><strong><a href="<mango:CommentProperty entryLink />#comment-<mango:CommentProperty id />" title="on <mango:CommentProperty entryTitle />"><mango:CommentProperty name /></a></strong>: <mango:CommentProperty excerptChars="80" /></li>
	</mango:Comment></mango:Comments>
	</ul>
	</div><!-- Recent Comments End -->
	
	
	<!--Subscriptions Start-->
	<div id="subscribe" class="footerContainer"><h3>Subscribe</h3>
		<p><a href="<mango:Blog rssurl />">Subscribe to RSS Feed</a><br />
			Receive feed updates via your feed reader </p>
		<p><a href="#">Email Subscription</a><br />
			Receive feed updates via email  </p>
		<p><a href="http://twitter.com/">Follow me on Twitter</a><br />
			I tweet my updates and other nonsense</p>
		<p><a href="<mango:Blog rssurl />"><img src="<mango:Blog skinurl />assets/images/icon-subscribe-rss.png" alt="Subscribe to RSS Feed" width="41" height="40" class="subscribeIcon" /></a><a href="#"><img src="<mango:Blog skinurl />assets/images/icon-subscribe-email.png" alt="Email Subscription" width="48" height="45" class="subscribeIcon" /></a><a href="#"><img src="<mango:Blog skinurl />assets/images/icon-subscribe-twitter.png" alt="Follow me on Twitter" width="34" height="32" /></a></p>
	</div><!--Subscriptions End-->
	
	
	<br class="clearfix" />
	<div id="footerCredits">
		<p>Technicolor Dark Theme Design By <a href="http://www.mangowear.com">Mark Aplet - MangoWear</a></p>
		<p>Free Icons by <a href="http://wefunction.com/2008/07/function-free-icon-set/">Function</a></p>
		<p>Super Powered by <a href="http://mangoblog.org">Mango Blog</a></p>
	</div>
	
	<br class="clearfix" />
<mango:Event name="beforeFooterEnd" />
</div><!--End Footer-->
</div><!--End Footer Wrapper-->