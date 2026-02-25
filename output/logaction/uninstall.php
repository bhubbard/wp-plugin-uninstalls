<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logaction_enable_logs_deletion');
delete_site_option('logaction_enable_logs_deletion');
delete_option('logaction_delete_logs_after_days');
delete_site_option('logaction_delete_logs_after_days');
delete_option('logaction_enable_logs_export');
delete_site_option('logaction_enable_logs_export');
delete_option('logaction_settings');
delete_site_option('logaction_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('delete_logs_older_than_30_days_cron');

