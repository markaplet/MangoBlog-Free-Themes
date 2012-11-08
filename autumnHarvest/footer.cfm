	<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango">
	<cfimport prefix="mangox" taglib="../../tags/mangoextras">
	<cfimport prefix="template" taglib=".">
	</cfsilent>
	<cfif thisTag.executionMode EQ "start">
		<div class="footer-recent-posts">
			<h4>Recent Posts</h4>
			<ul>
				<mango:Posts count="4"><mango:Post>
				<li><strong><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></strong><br /><small><mango:PostProperty date dateformat="mm-dd-yyyy" /></small></li>
				</mango:Post></mango:Posts>
			</ul>
		</div>
		<div class="footer-recent-comments">
			<h4>Recent Comments</h4>
			<ul>
				<mango:Comments recent count="4"><mango:Comment>
				<li><strong><a href="<mango:CommentProperty entryLink />#comment-<mango:CommentProperty id />"><mango:CommentProperty name /></a></strong>: <mango:CommentProperty excerptChars="80" /></li>
				</mango:Comment></mango:Comments>
			</ul>
		</div>
		<div id="about-blog">
			<h4>About This Site</h4>
			<p><mango:Blog description descriptionParagraphFormat /></p>
		</div>
		<div id="fineprint">
			<p>Autumn Harvest theme by <a href="http://www.mangowear.com" rel="external">Mark Aplet</a></p>
			<p>CSS by <a href="http://aloestudios.com" rel="external">Andy Ford</a></p>
			<p>Superpowered by <a href="http://mangoblog.com" rel="external">Mango Blog</a></p>
		</div>
	</cfif>