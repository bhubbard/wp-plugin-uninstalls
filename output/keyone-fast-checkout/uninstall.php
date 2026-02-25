<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('k1fach_api_identifier');
delete_site_option('k1fach_api_identifier');
delete_option('k1fach_enable_button');
delete_site_option('k1fach_enable_button');
delete_option('k1fach_jwt_duration');
delete_site_option('k1fach_jwt_duration');
delete_option('k1fach_button_alignment');
delete_site_option('k1fach_button_alignment');
delete_option('k1fach_api_key');
delete_site_option('k1fach_api_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('k1fach_daily_health_check');

