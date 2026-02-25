<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fswa_db_version');
delete_site_option('fswa_db_version');
delete_option('fswa_log_retention_days');
delete_site_option('fswa_log_retention_days');
delete_option('fswa_archive_logs');
delete_site_option('fswa_archive_logs');
delete_option('fswa_archived_stats');
delete_site_option('fswa_archived_stats');

// Delete Transients
delete_transient('fswa_migration_notice');
delete_site_transient('fswa_migration_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('fswa_cleanup_logs');
wp_clear_scheduled_hook('fswa_process_queue');

