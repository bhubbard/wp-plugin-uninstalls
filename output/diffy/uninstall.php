<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('diffy_api_key');
delete_site_option('diffy_api_key');
delete_option('diffy_project_id');
delete_site_option('diffy_project_id');
delete_option('diffy_first_screenshot_id');
delete_site_option('diffy_first_screenshot_id');
delete_option('diffy_second_screenshot_id');
delete_site_option('diffy_second_screenshot_id');
delete_option('diffy_diff_id');
delete_site_option('diffy_diff_id');

