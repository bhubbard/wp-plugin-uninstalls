<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('videoseowtf');
delete_site_option('videoseowtf');
delete_option('videoseo_last_generate_time');
delete_site_option('videoseo_last_generate_time');
delete_option('videoseo_last_ping_time');
delete_site_option('videoseo_last_ping_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('my_hourly_event');

