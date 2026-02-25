<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apod_api_key');
delete_site_option('apod_api_key');
delete_option('apod_default_status');
delete_site_option('apod_default_status');
delete_option('apod_post_as');
delete_site_option('apod_post_as');

// Clear Cron Jobs
wp_clear_scheduled_hook('nasa_potd_daily_event_hook');

