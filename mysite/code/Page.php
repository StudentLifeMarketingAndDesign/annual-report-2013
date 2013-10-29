<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

}
class Page_Controller extends ContentController {

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
	private static $allowed_actions = array ( 'RandomVideo'
	);

	public function init() {
		parent::init();

	}

	public function RandomVideo(){
		$videos = array();

		$videos[0] = "imu_hd";
        $videos[1] = "burge_hd";
        $videos[2] = "pentacrest_hd";
        $videos[3] = "rec_hd";

        $randomKey = array_rand($videos);
        $randomVideo = $videos[$randomKey];

        return $randomVideo;

	}

}
