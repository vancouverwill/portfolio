<ul class="recentPosts">
	<% control Entries %>
		<li>
			<a href="$Link">
				$title
			</a>
		</li>
	<% end_control %>
</ul>

<!--
<% if DisplayMode == month %>
	<ul class="archiveMonths">
		<% control Dates %>
			<li>
				<a href="$Link">
					$Date.Format(F) $Date.Year
				</a>
			</li>
		<% end_control %>
	</ul>
<% else %>
	<ul class="archiveYears">
		<% control Dates %>
			<li>
				<a href="$Link">
					$Date.Year<% if Last %><% else %>,<% end_if %>
				</a>
			</li>
		<% end_control %>
	</ul>
<% end_if %>

-->