<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mview_settings');
delete_site_option('mview_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('mview_hourly_event');

