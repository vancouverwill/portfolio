<h2>legacy</h2>

<% control GetVideoData %>
<object width="$Width" height="$Height">
	<param name="movie" value="$URL"></param>
	<param name="allowFullScreen" value="true"></param>
	<embed src="$URL" type="application/x-shockwave-flash" allowfullscreen="true" width="$Width" height="$Height"></embed>
</object>

<p style="text-align:center;">$Title</p>

<hr/>
<iframe width="$Width" height="$Height" src="$URL" frameborder="0" ></iframe>
<% end_control %>
