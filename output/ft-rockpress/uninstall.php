<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('rockpress_import');
delete_site_option('rockpress_import');
delete_option('rockpress_last_import');
delete_site_option('rockpress_last_import');
delete_option('rockpress_import_in_progress');
delete_site_option('rockpress_import_in_progress');
delete_option('rockpress_licenses');
delete_site_option('rockpress_licenses');
delete_option('rockpress_rock');
delete_site_option('rockpress_rock');
delete_option('rockpress_settings');
delete_site_option('rockpress_settings');
delete_option('rockpress_current_import');
delete_site_option('rockpress_current_import');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_key_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rockpress_license_data');
delete_site_option('rockpress_license_data');

// Delete Transients
delete_transient('rockpress-addons');
delete_site_transient('rockpress-addons');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('rockpress_maintenance');
wp_clear_scheduled_hook('rockpress_transient_cache_cleanup');

