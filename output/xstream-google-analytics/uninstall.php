<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xga_tracking_id');
delete_site_option('xga_tracking_id');
delete_option('xga_track_admin');
delete_site_option('xga_track_admin');

// Clear Cron Jobs
wp_clear_scheduled_hook('update_xstream_ga');

