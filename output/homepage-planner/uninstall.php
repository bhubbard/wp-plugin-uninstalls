<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adb_homepage_planner_page_id');
delete_site_option('adb_homepage_planner_page_id');
delete_option('adb_homepage_planner_time');
delete_site_option('adb_homepage_planner_time');

