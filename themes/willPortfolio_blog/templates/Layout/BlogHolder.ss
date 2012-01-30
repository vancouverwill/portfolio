<% include BlogSideBar %>
<div id="blogrcol">
	<div id="rcontent" class="blogContent typography">
		<!--<h1>$Title</h1>-->
		
		$Content
	
		<% if Tag %>
			<h3>Viewing entries tagged with '$Tag'</h3>
		<% end_if %>
		
		<% if BlogEntries %>
			<% control BlogEntries %>
					<% include BlogSummary %>
			<% end_control %>
		<% else %>
			<h3>There are no blog entries</h3>
		<% end_if %>
		
		<% include BlogPagination %>
		
	</div>
	<br style="clear:left;" />
</div>