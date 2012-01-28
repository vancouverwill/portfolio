<?php
// Youtube Widget 0.0.1 for the SilverStripe Blog Module
// 22.09.2008
// By nivanka@whynotonline.com
// Save this and YoutubeWidget.ss to widget_youtube/ and run "db/build"
class YoutubeWidget extends Widget{
	static $title = "My favorite video";
	static $cmsTitle = "Your tube widget";
	static $description = "This widget can embed clips from youtube.com. 1.get the code from youtube.
2. find the param tag with the name movie
3. copy and paste the value of that param";

	static $db = array(
		"Width" => "Int",
		"Height" => "Int",
		"URL" => "Text",
		"Title" => "Text"
	);
	
	static $defaults = array(
		"Width" => 200,
		"Height" => 200
	);

	function getCMSFields(){
		return new FieldSet(
			new NumericField("Width", "Video Width"),
			new NumericField("Height", "Video Height"),
			new TextField("URL", "Video URL"),
			new TextField("Title","Title or a note about this video")
		);
	}
	
	function GetVideoData(){
		
		$output = new DataObjectSet();
		$output->push(
			new ArrayData(
				array(
					"Width" => $this->Width,
					"Height" => $this->Height,
					"URL" => $this->URL,
					"Title" => $this->Title
				)
			)
		);		
		return $output;
	}
}

?>
