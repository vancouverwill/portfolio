<% require css(widgets_youtube/youtubeWidgetStyle.css) %>
<div class="youtubeWidget">
<h2>normal youtube template</h2>

<% control GetVideoData %>
<object width="$Width" height="$Height">
	<param name="movie" value="$URL"></param>
	<param name="allowFullScreen" value="true"></param>
	<embed src="$URL" type="application/x-shockwave-flash" allowfullscreen="true" width="$Width" height="$Height"></embed>
</object>
<% end_control %>


<% control GetVideoData %>

<p style="text-align:center;">$Title</p>

<hr/>
<iframe width="$Width" height="$Height" src="$URL" frameborder="0" ></iframe>
<% end_control %>
</div>