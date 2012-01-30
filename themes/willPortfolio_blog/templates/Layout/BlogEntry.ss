<% include BlogSideBar %>
<div id="blogrcol">
	<div id="rcontent" class="blogContent ">
		<div class="blogEntry">
			<h1>$Title</h1>
			<div class="date">
				<span class="dateMonth">$Date.ShortMonth </span>
				<span class="dateDay">$Date.DayOfMonth</span>
				<span class="dateYear">$Date.Year</span>
			</div>
			<span class="slogan3">
				<!--Posted by $Author.XML on $Date.Long | -->

				

			</span>
			<br />
			<p><!-- ParsedContent --></p>
			<p>$Content</p>
			
		<% if TagsCollection %>
			<p class="tags">
				 <% _t('TAGS', 'Tags:') %> 
				<% control TagsCollection %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
				<% end_control %>
			</p>
		<% end_if %>
			
			<p class="blogVitals"><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>
		<fb:like href="$AbsoluteLink" layout="button_count" show_faces="false" width="30"></fb:like>
		<a href="http://twitter.com/share" class="twitter-share-button" data-text="$Title" data-url="$AbsoluteLink" data-count="horizontal" data-via="silverstripe" data-related="dawnapp">Tweet</a>    
		<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
		<!--<a href="$Link#PageComments_holder" class="comments" title="View Comments for this post">$Comments.Count comments</a>--> 
	</p>
	
	
			<% if featuredBlogEntriesExist %>
			<h4>Other Interesting Posts</h4>
				<% control FeatureBlogEntryOne %>
					<% if Title %>
						<p><a href="$Link">$Title</a></p>
					<% end_if %>
				<% end_control %>
				<% control FeatureBlogEntryTwo %>
					<% if Title %>
						<p><a href="$Link">$Title</a></p>
					<% end_if %>
				<% end_control %>
				<% control FeatureBlogEntryThree %>
					<% if Title %>
						<p><a href="$Link">$Title</a></p>
					<% end_if %>
				<% end_control %>
			<% else %>
						<!--no feature blog posts-->
			<% end_if %>
			<br />
		
		<% if CurrentMember %><p><a href="$EditURL" id="editpost" title="Edit this post">Edit this post</a> | <a href="$Link(unpublishPost)" id="unpublishpost">Unpublish this post</a></p>
		<% end_if %>

		
		<!-- silverstripe pagecomments add $ to the following to bring back PageComments -->
		
		<div id="fb-root"></div>
		<div class="fbComments">
<script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>
<fb:comments href="$BaseHref{$URLSegment}" style="width:480px;"></fb:comments>
</div>

<!-- $link 
		<hr/>
		$URLSegment
		<hr/>
		$ExternalURL
		<hr/>
		$BaseHref{$URLSegment}-->
		</div>
	</div>
</div>