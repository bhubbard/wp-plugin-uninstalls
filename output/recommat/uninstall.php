<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recommat_settings');
delete_site_option('recommat_settings');
delete_option('activate-recommat');
delete_site_option('activate-recommat');

// Clear Cron Jobs
wp_clear_scheduled_hook('recommat_hourly_cron_hook');

