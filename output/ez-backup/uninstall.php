<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ez-backup-settings');
delete_site_option('ez-backup-settings');
delete_option('ELISQLREPORTS_settings_array');
delete_site_option('ELISQLREPORTS_settings_array');
delete_option('ELISQLREPORTS_BACKUP_DB');
delete_site_option('ELISQLREPORTS_BACKUP_DB');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ELISQLREPORTS_daily_backup');
wp_clear_scheduled_hook('ELISQLREPORTS_hourly_backup');
wp_clear_scheduled_hook('ezbackup_db_daily');
wp_clear_scheduled_hook('ezbackup_db_hourly');

