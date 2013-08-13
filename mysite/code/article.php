<?php
class Article extends Page {

	public static $db = array(
		"Department" => "Text",
		"WordsBy" => "Text",
		"VideoBy" => "Text",
		"Excerpt" => "Text",
	
	);

	public static $has_one = array(
		"Photo" => "Image",
		//"Team" => "StaffTeam"
	);
	
	public function getCMSFields(){
		$fields = parent::getCMSFields();
		
		$fields->removeByName("Content");
		$fields->removeByName("Metadata");

		$fields->addFieldToTab("Root.Main", new TextField("Department", "Department"));
		$fields->addFieldToTab("Root.Main", new TextField("WordsBy", "Words By:"));
		$fields->addFieldToTab("Root.Main", new TextField("VideoBy", "Video By:"));
		
		//$fields->addFieldToTab("Root.Main", new DropdownField("TeamID", 'Team <a href="admin/pages/edit/show/14" target="_blank">(Manage Teams)</a>', StaffTeam::get()->map('ID', 'Name')));
		
		//$fields->addFieldToTab("Root.Main", new LiteralField("TeamLabel", ''));

		$fields->addFieldToTab("Root.Main", new UploadField("Photo", "Photo (dimensions)"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Excerpts", "Excerpt"));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField("Content", "Content"));
		
		return $fields;
		
	}
	
	//public static $allowed_children = array("");

}
class Article_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();


	}

}