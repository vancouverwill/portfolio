<div class="typography">
	<% if Menu(2) %>
		<% include SideBar %>
		<div id="Content">
	<% end_if %>

	<% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
	
		<h2>$Title</h2>
	<h1>sampel text here</h1>
		$Content.codeContent()
		$codeContent
		$Content
		$Form
		$PageComments
	<% if Menu(2) %>
		</div>
	<% end_if %>
</div>