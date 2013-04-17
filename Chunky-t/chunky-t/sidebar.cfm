<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<cfif thisTag.executionMode EQ "start">

	<!--- recent posts --->
	<mangox:TemplatePod id="posts" title="Recent Entries">
	<ul class="podgroup"><mango:Posts count="5" source="recent"><mango:Post>
		<li><a href="<mango:PostProperty link />"><mango:PostProperty title /></a></li>
	</mango:Post></mango:Posts>
	<mango:Archive pageSize="5"><mango:ArchiveProperty ifHasNextPage>
		<li><a href="<mango:ArchiveProperty link />" title="More in the archives">More in the archives</a></li></mango:ArchiveProperty></mango:Archive>
	</ul>
	</mangox:TemplatePod>
	
	<!--- categories with RSS --->
	<mangox:TemplatePod id="rsscategories" title="Categories">
	<ul class="podgroup"><mango:Categories><mango:Category>
		<li><a href="<mango:CategoryProperty rssurl />" class="category_rss"><img src="<mango:Blog skinurl />assets/images/icons/feed.png" alt="Subscribe to this category" width="16" height="16" /></a> <a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title />"><mango:CategoryProperty title /></a></li>
	</mango:Category></mango:Categories></ul>
	</mangox:TemplatePod>
	
	<!--- categories without RSS --->
	<mangox:TemplatePod id="categories" title="Categories">
	<ul class="podgroup"><mango:Categories><mango:Category>
		<li><a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title />"><mango:CategoryProperty title /></a></li>
	</mango:Category></mango:Categories></ul>
	</mangox:TemplatePod>
	
	<!--- search box --->
	<mangox:TemplatePod id="search">
	<form id="searchForm" method="get" action="<mango:Blog searchUrl />">
		<fieldset>
		<legend>Search Site</legend>
			<label for="term" class="hide">Search</label><input type="text" name="term" value="" id="term" />
			<button type="submit" class="searchbutton">Search</button>
		</fieldset>
	</form>
	</mangox:TemplatePod>

	<!--- category cloud --->
	<mangox:TemplatePod id="category-cloud" title="Tag Cloud">
		<div class="tagcloud"><mangox:CategoryCloud /></div>
	</mangox:TemplatePod>
	
	<!--- all archives by month --->
	<mangox:TemplatePod id="monthly-archives" title="Monthly Archives">
		<ul class="podgroup"><mango:Archives type="month" count="6"><mango:Archive>
			<li><a href="<mango:ArchiveProperty link />"><mango:ArchiveProperty title dateformat="mmmm yyyy" /> (<mango:ArchiveProperty postcount />)</a></li>
		</mango:Archive></mango:Archives>
		</ul>
	</mangox:TemplatePod>
	
<!--- all links by category --->
	<mangox:TemplatePod id="links-by-category">
		<mangox:LinkCategories><mangox:LinkCategory>
			<h2><mangox:LinkCategoryProperty name /></h2>
			</mangox:LinkCategory>
				<ul class="podgroup">
				<mangox:Links>
				<mangox:Link>
					<li><a href="<mangox:LinkProperty address />" title="<mangox:LinkProperty title />"><mangox:LinkProperty title /></a></li>
				</mangox:Link>
				</mangox:Links>
				</ul>
		</mangox:LinkCategories>
	</mangox:TemplatePod>
	
	
	<!--- output all the pods, including the ones added by plugins --->
	<mangox:Pods>
		<mangox:Pod>
			<mangox:PodProperty ifHasTitle>
				<h2><mangox:PodProperty title /></h2>
				<mangox:PodProperty content />
			</mangox:PodProperty>
		</mangox:Pod>
		<mangox:Pod><!--- output the content as is, good for "templatePods" --->
			<mangox:PodProperty ifNotHasTitle>
				<mangox:PodProperty content />
			</mangox:PodProperty>
		</mangox:Pod>
	</mangox:Pods>
</cfif>