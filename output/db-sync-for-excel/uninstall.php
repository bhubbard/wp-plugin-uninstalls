<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbse_migrated_storage');
delete_site_option('dbse_migrated_storage');
delete_option('dbse_options');
delete_site_option('dbse_options');
delete_option('db_excel_sync_delete_data');
delete_site_option('db_excel_sync_delete_data');
delete_option('db_excel_sync_options');
delete_site_option('db_excel_sync_options');

// Delete Transients
delete_transient('db_excel_sync_preview_data');
delete_site_transient('db_excel_sync_preview_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('dbse_cleanup_backups_event');

