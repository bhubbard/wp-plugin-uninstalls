<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccbpress_import_in_progress');
delete_site_option('ccbpress_import_in_progress');
delete_option('ccbpress_last_import');
delete_site_option('ccbpress_last_import');
delete_option('ccbpress_cancel_import');
delete_site_option('ccbpress_cancel_import');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('ccbpress_ccb');
delete_site_option('ccbpress_ccb');
delete_option('ccbpress_settings');
delete_site_option('ccbpress_settings');
delete_option('ccbpress_settings_import');
delete_site_option('ccbpress_settings_import');
delete_option('ccbpress_licenses');
delete_site_option('ccbpress_licenses');
delete_option('ccbpress_tools_cron');
delete_site_option('ccbpress_tools_cron');
delete_option('ccbpress_tools_cache');
delete_site_option('ccbpress_tools_cache');
delete_option('ccbpress_rate_limits');
delete_site_option('ccbpress_rate_limits');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_key_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ccbpress_license_data');
delete_site_option('ccbpress_license_data');
delete_option('ccbpress_current_import');
delete_site_option('ccbpress_current_import');
delete_option('ccbpress_core_db_version');
delete_site_option('ccbpress_core_db_version');
delete_option('ccbpress_ccb_forms_lightbox');
delete_site_option('ccbpress_ccb_forms_lightbox');
delete_option('ccbpress_ccb_links_forms');
delete_site_option('ccbpress_ccb_links_forms');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'edd_api_request_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('ccbpress-addons');
delete_site_transient('ccbpress-addons');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('wp_ccbpress_get_process_lock');
delete_site_transient('wp_ccbpress_get_process_lock');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('ccbpress_maintenance');
wp_clear_scheduled_hook('ccbpress_import');
wp_clear_scheduled_hook('ccbpress_transient_cache_cleanup');
wp_clear_scheduled_hook('wp_ccbpress_get_cron');

