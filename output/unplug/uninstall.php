<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unplug_settings');
delete_site_option('unplug_settings');
delete_option('unplug_settings[enable_logging]');
delete_site_option('unplug_settings[enable_logging]');
delete_option('unplug_activity_scan_results');
delete_site_option('unplug_activity_scan_results');
delete_option('unplug_license_status');
delete_site_option('unplug_license_status');
delete_option('unplug_migration_failed');
delete_site_option('unplug_migration_failed');
delete_option('unplug_migration_error');
delete_site_option('unplug_migration_error');
delete_option('unplug_location_scan_results');
delete_site_option('unplug_location_scan_results');
delete_option('unplug_last_scan_time');
delete_site_option('unplug_last_scan_time');
delete_option('unplug_version');
delete_site_option('unplug_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_file' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('unplug_db_config');
delete_site_option('unplug_db_config');
delete_option('unplug_api_token_encrypted');
delete_site_option('unplug_api_token_encrypted');
delete_option('unplug_encryption_key');
delete_site_option('unplug_encryption_key');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('unplug_queue_max_size');
delete_site_option('unplug_queue_max_size');
delete_option('unplug_api_token');
delete_site_option('unplug_api_token');
delete_option('unplug_jwt_public_key');
delete_site_option('unplug_jwt_public_key');
delete_option('unplug_network_settings');
delete_site_option('unplug_network_settings');
delete_option('unplug_network_api_token');
delete_site_option('unplug_network_api_token');

// Delete Transients
delete_transient('unplug_activity_scan_results');
delete_site_transient('unplug_activity_scan_results');
delete_transient('unplug_plugin_list');
delete_site_transient('unplug_plugin_list');
delete_transient('unplug_scan_progress');
delete_site_transient('unplug_scan_progress');
delete_transient('unplug_api_validation');
delete_site_transient('unplug_api_validation');
delete_transient('unplug_user_tier');
delete_site_transient('unplug_user_tier');
delete_transient('unplug_queue_status');
delete_site_transient('unplug_queue_status');
delete_transient('unplug_plugin_inventory');
delete_site_transient('unplug_plugin_inventory');
delete_transient('unplug_dashboard_refresh');
delete_site_transient('unplug_dashboard_refresh');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_unplug_confirmation_%', '_site_transient_unplug_confirmation_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('unplug_activity_scan');
wp_clear_scheduled_hook('unplug_cleanup_old_scans');
wp_clear_scheduled_hook('unplug_process_queue');
wp_clear_scheduled_hook('unplug_validate_api_token');
wp_clear_scheduled_hook('unplug_update_plugin_inventory');
wp_clear_scheduled_hook('unplug_background_scan');
wp_clear_scheduled_hook('unplug_cleanup_scan_results');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

