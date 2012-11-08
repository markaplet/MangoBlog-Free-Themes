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