<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ELISQLREPORTS_reports_array');
delete_site_option('ELISQLREPORTS_reports_array');
delete_option('ELISQLREPORTS_settings_array');
delete_site_option('ELISQLREPORTS_settings_array');
delete_option('ELISQLREPORTS_BACKUP_DB');
delete_site_option('ELISQLREPORTS_BACKUP_DB');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ELISQLREPORTS_cache_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('ELISQLREPORTS_hourly_backup');
wp_clear_scheduled_hook('ELISQLREPORTS_daily_backup');

