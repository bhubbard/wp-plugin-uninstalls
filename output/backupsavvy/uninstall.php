<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbiu_schedules');
delete_site_option('wpbiu_schedules');
delete_option('backupsavvy_db_version');
delete_site_option('backupsavvy_db_version');
delete_option('backupsavvy_storage');
delete_site_option('backupsavvy_storage');
delete_option('backupsavvy_backup_settings');
delete_site_option('backupsavvy_backup_settings');
delete_option('backupsavvy_apikey');
delete_site_option('backupsavvy_apikey');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'backupsavvy_unique_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('backupsavvy_premium_object');
delete_site_option('backupsavvy_premium_object');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'backupsavvy_unique_ftp%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('backupsavvy_license');
delete_site_option('backupsavvy_license');

// Clear Cron Jobs
wp_clear_scheduled_hook('backupsavvy_cron_job');
wp_clear_scheduled_hook('creating_sites_backups');
wp_clear_scheduled_hook('creating_sites_backup');

