<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xsec_settings');
delete_site_option('xsec_settings');
delete_option('xsec_activated');
delete_site_option('xsec_activated');
delete_option('xsec_db_version');
delete_site_option('xsec_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('xsec_daily_scan');
wp_clear_scheduled_hook('xsec_cleanup');

