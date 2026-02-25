<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uptime_robot_option_show_id');
delete_site_option('uptime_robot_option_show_id');
delete_option('uptime_robot_option_show_type');
delete_site_option('uptime_robot_option_show_type');
delete_option('uptime_robot_option_show_ratio');
delete_site_option('uptime_robot_option_show_ratio');
delete_option('uptime_robot_option_api_key');
delete_site_option('uptime_robot_option_api_key');

