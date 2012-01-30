<div class="blogSummary">
	<h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	
	<div class="date">
				<span class="dateMonth">$Date.ShortMonth </span>
				<span class="dateDay">$Date.DayOfMonth</span>
				<span class="dateYear">$Date.Year</span>
			</div>
	
	<p class="authorDate"><!--<% _t('POSTEDBY', 'Posted by') %> $Author.XML <% _t('POSTEDON', 'on') %> $Date.Long |--> <!--<a href="$Link#PageComments_holder" title="View Comments Posted">$Comments.Count <% _t('COMMENTS', 'Comments') %></a>--></p>
	
	
	<!--<p>from blog folder themes foler</p>
	<p>$str_to_img_src</p>
	<p>$img_exists</p>
		
		<hr/>-->
	
	
		
		<div class="blogSummaryImageContainer">
		<% if img_exists %>
			<!-- true -->
			<p><img class="blogSummaryImage" src="$str_to_img_src" /></p>
			<!-- <p>$img_exists</p>
			<p>$str_to_img_src</p> -->
		<% else %>
			<!-- false -->
		<% end_if %>
		</div>
		
		<div class="blogSummaryText">
		
		$firstCharactersWithoutImages(300, ...)&nbsp;&nbsp;<a href="$Link" title="<% _t('VIEWFULL', 'read more') %> '$Title'">read more</a>
		
		<% if TagsCollection %>
			<br/>
			<p class="tags">
				Tags:
				<% control TagsCollection %>
					<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
				<% end_control %>
			</p>
		<% end_if %>
		</div>
	<div class="clearBoth"></div>
	
	
	
	
	<p class="blogVitals">
	
		<!--<script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script>
		<fb:like href="$AbsoluteLink" layout="button_count" show_faces="false" width="30"></fb:like>
		<a href="http://twitter.com/share" class="twitter-share-button" data-text="$Title" data-url="$AbsoluteLink" data-count="horizontal" data-via="silverstripe" data-related="dawnapp">Tweet</a>    
		<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>-->
		
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
		</div>	
		<!--<a href="$Link#PageComments_holder" class="comments" title="View Comments for this post">$Comments.Count comments</a>--> 
		<a href="$Link" class="readmore" title="Read Full Post">Read the full post</a> | 
	</p>
</div>

<!-- possible options

$Content.FirstParagraph(html)
$Content
$contentWithoutImages
$firstParagraphWithoutImages
$str_img_src
-->