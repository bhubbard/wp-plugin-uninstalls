<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nhrotm_auto_cleanup_enabled');
delete_site_option('nhrotm_auto_cleanup_enabled');
delete_option('nhrotm_history_retention_days');
delete_site_option('nhrotm_history_retention_days');

// Clear Cron Jobs
wp_clear_scheduled_hook('nhrotm_daily_cleanup');
wp_clear_scheduled_hook('nhrotm_daily_history_prune');

