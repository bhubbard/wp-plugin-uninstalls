<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linear_settings');
delete_site_option('linear_settings');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('trp_settings');
delete_site_option('trp_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_linear_dismiss_%', '_site_transient_linear_dismiss_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('linear_dismiss_old_plugin_version');
delete_site_transient('linear_dismiss_old_plugin_version');
delete_transient('linear_dismiss_missing_data');
delete_site_transient('linear_dismiss_missing_data');
delete_transient('linear_flush_rewrite_rules_needed');
delete_site_transient('linear_flush_rewrite_rules_needed');

// Clear Cron Jobs
wp_clear_scheduled_hook('linear_refresh_listings_cron');

