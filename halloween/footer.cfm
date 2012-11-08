<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<div id="footer">
	<mango:Event name="afterFooterStart" />
	<!--recent comments start -->
	<div class="footerRecentPosts">
		<h4>Recent Posts</h4>
		<ul>
			<mango:Posts count="5">
				<mango:Post>
					<li><strong><a href="<mango:PostProperty link />" rel="bookmark" title="Permanent link to <mango:PostProperty title />">
						<mango:PostProperty title />
						</a></strong><br />
						<small>
						<mango:PostProperty date dateformat="m-d-yyyy" />
						</small> </li>
				</mango:Post>
			</mango:Posts>
		</ul>
	</div>
	<!--recent comments start -->
	<!--recent comments start -->
	<div class="footerRecentComments">
		<h4>Recent Comments</h4>
		<ul>
			<mango:Comments recent count="4">
				<mango:Comment>
					<li><strong><a href="<mango:CommentProperty entryLink />#comment-<mango:CommentProperty id />" title="on <mango:CommentProperty entryTitle />">
						<mango:CommentProperty name />
						</a></strong>:
						<mango:CommentProperty excerptChars="80" />
					</li>
				</mango:Comment>
			</mango:Comments>
		</ul>
	</div>
	<!--recent comments end -->
	<!--about text start -->
	<div class="footerAbout">
		<h4>About</h4>
		<p>
			<mango:Blog description descriptionParagraphFormat />
		</p>
	</div>
	<!--about text end -->
	<br class="clearFix" />
	<!-- end #footer -->
	<mango:Event name="beforeFooterEnd" />
</div>
