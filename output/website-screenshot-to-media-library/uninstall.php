<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsml_screenshot_api_key');
delete_site_option('wsml_screenshot_api_key');
delete_option('wsml_screenshot_viewport_width');
delete_site_option('wsml_screenshot_viewport_width');
delete_option('wsml_screenshot_viewport_height');
delete_site_option('wsml_screenshot_viewport_height');
delete_option('wsml_screenshot_image_format');
delete_site_option('wsml_screenshot_image_format');

