<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('debug_robot_host');
delete_site_option('debug_robot_host');
delete_option('debug_robot_port');
delete_site_option('debug_robot_port');
delete_option('debug_robot_target');
delete_site_option('debug_robot_target');
delete_option('debug_robot_server');
delete_site_option('debug_robot_server');

