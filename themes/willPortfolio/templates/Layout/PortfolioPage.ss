<div class="typography">
	<% if Menu(2) %>
		<% include SideBar %>
		<div id="Content">
	<% end_if %>

	<!-- <% if Level(2) %>
	  	<% include BreadCrumbs %>
	<% end_if %>
	
		 <h2>$Title</h2> --!>
	
		$Content
		$Form
		$PageComments
		
		
<!--<h1>some content</h1>
		<a id="inline" href="#data">This shows content of element who has id="data"</a>
<div style="display:none"><div id="data">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div></div>-->
		
		<% if portfolioProjects %>
                <% control portfolioProjects %>
                	
                	
                	<div class="titleBlock" style="clear:both; height:35px;">
	                    <h3 style="display:inline; float:left; height:35px;">$Name</h3>
	                    <a href="$Website" target="_blank" style="display:inline;  height:35px; float:left; font-size:9px; margin-top:8px; margin-left:15px;">click to see live</a>
                    </div>
                    <div class="clear"></div>
                    <div class="project" style="margin-left:20px; display:inline;">
	                    <% control popUps %>
	                    	<div class="projectPopUp" style="width:260px; height:200px; margin-right:20px;">
			                    <a  href="#PopUpContent{$ID}2"  class="fancyboxInline">
			                    	<!--<p>$PopUpTitle</p>-->
			                    </a>
			                    <a  href="#PopUpContent{$ID}2"  class="fancyboxInline" rel="$ParentProject.ID">
			                    		
			                    		<div class="projectPopUpThumbNail" style="margin:0px; padding:0px; width:250px; z-index:0; position:relative">
			                    		$Photo.SetWidth(250)
			                    		<div id="projectPopUpName" style="background: rgba(0, 0, 0, 0.8);  width:250px; height:30px; margin:0px; padding:0px; z-index:100; position:absolute; bottom:10px; ">
			                    			<p style="margin-top:4px; font-size:14px; color:#fff;">$PopUpTitle</p>
			                    		</div>
			                    		</div>
			                    		
			                    </a>
			                    	<div  style="display:none"><div id="PopUpContent{$ID}2" style="width:650px; eight:300px;" >
			                    		<div id="topPopUp" style="width:650px; bckground:green; height:150px;">
				                    		<div id="projectImagePopUp" style="float:left;  width:150px; height:100px;">
				                    			<% control ParentProject %>
				                    				$ProjectPhoto.SetSize(100,100)
				                    			<% end_control %>
				                    		</div>
				                    		<div id="textPopUp" style="float:left; font-size:14px; width:450px; height:100px; margin-top:20px;">
				                    			$PopUpHTMLContent
				                    			
				                    		</div>
			                    		</div>
			                    		<div id="rightPopUp" style="width:650px;  bckground:red;">
			                    			<div id="imagePopUp" style="margin-left:10px;">
			                    				$Photo.SetWidth(630)
			                    			</div>
			                    		</div>
			                    		
			                    		<!--<div id="leftPopUp" style="width:200px; float:left; background:green;">
				                    		$ParentProject.ProjectPhoto
				                    		
				                    		$PopUpHTMLContent
			                    		</div>
			                    		<div id="rightPopUp" style="width:300px; float:left; background:red;">
			                    			$Photo.SetWidth(180)
			                    		</div>-->
			                    		
			                    		<!--<div id="topPopUp" style="width:500px; bckground:green; height:150px;">
				                    		<div id="projectImagePopUp" style="float:left;  width:200px; height:150px;">
				                    			$ParentProject.ProjectPhoto
				                    		</div>
				                    		<div id="textPopUp" style="float:left; width:280px; height:150px; margin-top:30px;">
				                    			$PopUpHTMLContent
				                    		</div>
			                    		</div>
			                    		<div id="rightPopUp" style="width:500px;  bckground:red;">
			                    			<div id="imagePopUp" style="margin-left:50px;">
			                    				$Photo.SetWidth(400)
			                    			</div>
			                    		</div>-->
			                    		
			                    		
			                    	</div></div>
			                    	
			                    	
			                    	
			                    <% if Photo %>
			                    <% end_if %>
			                    	
			                 <!--
			                    	<a href="$Photo.URL" title="add a caption to title attribute / or leave blank" class="fancybox">
			                    		$Photo.SetWidth(80)
			                    		
			                    		
			                    	</a>
			                    	-->	
			                    </div>
		                    	
		                    	
		                    
	                	<% end_control %>
	                </div>
                <% end_control %>
        <% else %>
            No Student
        <% end_if %>
		
	<% if Menu(2) %>
		</div>
	<% end_if %>
</div>