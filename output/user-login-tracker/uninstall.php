<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ultk_db_version');
delete_site_option('ultk_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ultk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ultk_track_user_roles');
delete_site_option('ultk_track_user_roles');
delete_option('ultk_history_retention_days');
delete_site_option('ultk_history_retention_days');
delete_option('ultk_track_admin_logins');
delete_site_option('ultk_track_admin_logins');
delete_option('ultk_enable_dashboard_widget');
delete_site_option('ultk_enable_dashboard_widget');
delete_option('ultk_inactive_user_threshold');
delete_site_option('ultk_inactive_user_threshold');
delete_option('ultk_date_format');
delete_site_option('ultk_date_format');
delete_option('ultk_time_format');
delete_site_option('ultk_time_format');

// Delete Transients
delete_transient('ultk_migration_notice');
delete_site_transient('ultk_migration_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('ultk_cleanup_old_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ultk_last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ultk_last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ultk_last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ultk_last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ultk_login_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ultk_login_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ultk_login_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ultk_login_count' ) );

