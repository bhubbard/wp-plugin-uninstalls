<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_db_backup_excs');
delete_site_option('wp_db_backup_excs');
delete_option('wpdb_backup_recip');
delete_site_option('wpdb_backup_recip');
delete_option('wp_cron_backup_schedule');
delete_site_option('wp_cron_backup_schedule');
delete_option('wp_cron_backup_tables');
delete_site_option('wp_cron_backup_tables');
delete_option('wp_cron_backup_recipient');
delete_site_option('wp_cron_backup_recipient');
delete_option('wp_cron_daily_lastrun');
delete_site_option('wp_cron_daily_lastrun');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_db_backup_cron');

