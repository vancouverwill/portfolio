<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(layout) %> 
		<% require themedCSS(typography) %> 
		<% require themedCSS(form) %> 
		
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/blackcandy/css/ie6.css);
			</style> 
		<![endif]-->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-27326545-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
	</head>
<body>
	<div id="BgContainer">
		<div id="Container">
			<div id="Header">
				$SearchForm
		   		<h1>$SiteConfig.Title</h1>
		    	<p>$SiteConfig.Tagline</p>
			</div>
		
			<div id="Navigation">
				<% include Navigation %>
		  	</div>
	  	
		  	<div class="clear"><!-- --></div>
		
			<div id="Layout">
			  $Layout
			</div>
		
		   <div class="clear"><!-- --></div>
		   <div id="Footer">
			<% include Footer %>
			</div> 
		</div>
		
	</div>
</body>
</html>
