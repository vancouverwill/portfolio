<div class="blogSummary">
	<h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	
	<div class="date">
				<span class="dateMonth">$Date.ShortMonth </span>
				<span class="dateDay">$Date.DayOfMonth</span>
				<span class="dateYear">$Date.Year</span>
	</div>
			
			
	<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long | <a href="$Link#PageComments_holder" title="View Comments Posted">$Comments.Count <% _t('COMMENTS', 'Comments') %></a></p>
	<% if TagsCollection %>
		<p class="tags">
			Tags:
			<% control TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
			<% end_control %>
		</p>
	<% end_if %>
	$ParagraphSummary
	<p class="blogVitals">
	<!--<a href="$Link#PageComments_holder" class="comments" title="View Comments for this post">$Comments.Count comments</a>-->
	<div id="addthis" >
			<!-- AddThis Button BEGIN -->


			<div class="addthis_toolbox addthis_default_style ">
			<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
			<a class="addthis_button_tweet"></a>
			<a class="addthis_counter addthis_pill_style"></a>
			</div>
			<script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
			<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4f248fd66c1398e5"></script>

			<!-- AddThis Button END -->
		</div>	  <a href="$Link" class="readmore" title="Read Full Post">Read the full post</a></p>
</div>
