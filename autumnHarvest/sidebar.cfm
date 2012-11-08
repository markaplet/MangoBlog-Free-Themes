<cfimport prefix="mango" taglib="../../tags/mango">
<cfimport prefix="mangox" taglib="../../tags/mangoextras">
<cfimport prefix="template" taglib=".">
<cfif thisTag.executionMode EQ "start">
<mangox:PodGroup locationId="sidebar">
	<!--- search box --->
	<mangox:TemplatePod id="search">
			<form name="searchForm" id="searchform" method="get" action="<mango:Blog searchUrl />">
			<fieldset>
				<legend>Search Site</legend>
				<div>
					<input type="text" value="" name="term" id="s" />
					<button type="submit">Search</button>
				</div>
			</fieldset>
			</form>	
	</mangox:TemplatePod>
	
	<!---------------- Ad Block ---------------->
	<mangox:TemplatePod id="adBlock">
	<div id="adBlock" class="darkBlock"><img src="<mango:Blog skinurl />assets/images/ad-125x125.png" alt="advertisement" /><img src="<mango:Blog skinurl />assets/images/ad-125x125.png" alt="advertisement" /><img src="<mango:Blog skinurl />assets/images/ad-125x125.png" alt="advertisement" /><img src="<mango:Blog skinurl />assets/images/ad-125x125.png" alt="advertisement" /><br /><a href="#" class="adlink">Advertise here</a></div>
	</mangox:TemplatePod>
	

	<!---------------- All Categories ---------------->
	<mangox:TemplatePod id="categories">
		<h2>Categories</h2>
			<ul class="sidelist"><mango:Categories parent=""><mango:Category>
				<li><a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title />"><mango:CategoryProperty title /></a> (<mango:CategoryProperty postCount />)</li></mango:Category>
			</mango:Categories></ul>
	</mangox:TemplatePod>
	
	<!---------------- All Archives By Month ---------------->
	<mangox:TemplatePod id="monthly-archives">
	<h2>Archives By Month</h2>
		<ul class="sidelist"><mango:Archives type="month" count="12"><mango:Archive>
        	<li><a href='<mango:ArchiveProperty link />' title='<mango:ArchiveProperty title dateformat="mmmm yyyy" />'><mango:ArchiveProperty title dateformat="mmmm yyyy" /></a></li>
		</mango:Archive></mango:Archives></ul>
	</mangox:TemplatePod>
	
	<!---------------- All Links By Category ---------------->
	<mangox:TemplatePod id="links-by-category">
		<mangox:LinkCategories>
		<mangox:LinkCategory>
			<h2><mangox:LinkCategoryProperty name /></h2>
			<ul class="sidelist"><mangox:Links><mangox:Link>
			<li><a href="<mangox:LinkProperty address />"><mangox:LinkProperty title /></a></li></mangox:Link></mangox:Links>
			</ul>
		</mangox:LinkCategory>
		</mangox:LinkCategories>
	</mangox:TemplatePod>
	
	<!---------------- Category  Tag Cloud ---------------->
	<mangox:TemplatePod id="category-cloud">
	<div id="cloudTagPod" class="standard"><h2>Tag Cloud</h2>
		<mangox:CategoryCloud />
	</div>
	</mangox:TemplatePod>
	
	<!---------------- output all the pods, including the ones added by plugins ---------------->
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
</mangox:PodGroup>
</cfif>