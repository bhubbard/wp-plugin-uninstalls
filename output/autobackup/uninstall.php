<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_backup_cloud_storage');
delete_site_option('auto_backup_cloud_storage');
delete_option('auto_backup_last_restore');
delete_site_option('auto_backup_last_restore');
delete_option('auto_backup_sheduled_settings');
delete_site_option('auto_backup_sheduled_settings');

// Delete Transients
delete_transient('auto_backup_storage_type');
delete_site_transient('auto_backup_storage_type');
delete_transient('auto_backup_drp_app_key');
delete_site_transient('auto_backup_drp_app_key');
delete_transient('auto_backup_drp_app_secret');
delete_site_transient('auto_backup_drp_app_secret');
delete_transient('auto_backup_gdrive_client_id');
delete_site_transient('auto_backup_gdrive_client_id');
delete_transient('auto_backup_gdrive_client_secret');
delete_site_transient('auto_backup_gdrive_client_secret');

// Clear Cron Jobs
wp_clear_scheduled_hook('auto_backup_sheduled_databaase_hook');
wp_clear_scheduled_hook('auto_backup_sheduled_files_hook');

