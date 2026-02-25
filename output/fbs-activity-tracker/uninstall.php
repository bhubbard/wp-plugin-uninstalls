<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbsat_retention_days');
delete_site_option('fbsat_retention_days');
delete_option('fbsat_auto_cleanup');
delete_site_option('fbsat_auto_cleanup');
delete_option('fbsat_db_version');
delete_site_option('fbsat_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('fbsat_cleanup_logs');

