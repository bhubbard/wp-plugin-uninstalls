<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uptime_robot_nh_api');
delete_site_option('uptime_robot_nh_api');
delete_option('urpro_version');
delete_site_option('urpro_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('urpro_schedule_clear_cache');
wp_clear_scheduled_hook('urpro_clear_cache');

