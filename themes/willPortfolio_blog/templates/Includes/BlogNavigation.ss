<% if Menu(1) %>
	<div id="Menu">
		<ul>
			<% control Menu(1) %>
			<li class="$LinkingMode<% if FirstLast %> $FirstLast<% end_if %>">
				<% if LinkingMode = current %>
					<span class="item selected">$MenuTitle</span>
				<% else %>	
					<% if LinkingMode = section %>
						<a class="selectedLink" href="$Link" title="Go to the $Title.XML page">$MenuTitle<span></span></a>
					<% else %>				
						<a class="item" href="$Link" title="Go to the $Title.XML page">$MenuTitle<span></span></a>
					<% end_if %>
				<% end_if %>
			</li>
			<% end_control %>
		</ul>
	</div>
	<div id="menu_end"></div>
<% end_if %>