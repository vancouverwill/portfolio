<% require css(blog_ProjectGalleryWidget/css/projectGalleryWidgetStyle.css) %>
<div id="featuredProjectsWidget">
	<% control Projects %>
		<div class="featuredProjectsWidgetImage">
			<a href="$Link">
					
				<% if ProjectDisplayImage %>
					
					
						<span class="featuredProjectsImage">
								<% control ProjectDisplayImage %><% control CroppedImage(75, 75) %> 
										<img class="project $Title featuredProjectsImageSmall" src="$URL"  	
								<% end_control %><% end_control %>
							title="$Name" alt="$Name" />
						</span>
				<% else_if MyClient.ClientLogo %>
					
					<div>
										<% control MyClient.ClientLogo %>
										$Image
																			
											<% control CroppedImage(75,75) %> 
												<img src="$URL"		
												<% end_control %>
										<% end_control %>
											title="$MyClient.ClientName" alt="$MyClient.ClientName" />
									</div>
				<% else %>
					<span class="featuredProjectsImage noClientImageNoProjectImage" style="width:308px; height:95px;">
							<img src="/assets/graphics/Projects-Logo-Synergy.jpg" class="noClientNoProject" alt="Synergy Computer Consulting - Logo"/>
					</span>
				<% end_if %>	
			</a>
		</div>
	<% end_control %>
	<div class="clearBoth">&nbsp;</div>
</div>

