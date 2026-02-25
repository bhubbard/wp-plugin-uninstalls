<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seinc_backup_folder_path');
delete_site_option('seinc_backup_folder_path');
delete_option('seinc_backup_schedule_enabled');
delete_site_option('seinc_backup_schedule_enabled');
delete_option('seinc_backup_schedule_frequency');
delete_site_option('seinc_backup_schedule_frequency');
delete_option('seinc_backup_schedule_time');
delete_site_option('seinc_backup_schedule_time');
delete_option('seinc_backup_retention_days');
delete_site_option('seinc_backup_retention_days');
delete_option('seinc_backup_progress');
delete_site_option('seinc_backup_progress');

// Clear Cron Jobs
wp_clear_scheduled_hook('seinc_backup_scheduled_event');

