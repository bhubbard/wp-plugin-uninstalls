<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fmc_settings');
delete_site_option('fmc_settings');
delete_option('fmc_cache_version');
delete_site_option('fmc_cache_version');
delete_option('fmc_db_cache_key');
delete_site_option('fmc_db_cache_key');
delete_option('fmc_tracked_transients');
delete_site_option('fmc_tracked_transients');
delete_option('fmc_plugin_version');
delete_site_option('fmc_plugin_version');
delete_option('fmc_my_type');
delete_site_option('fmc_my_type');
delete_option('fmc_my_office');
delete_site_option('fmc_my_office');
delete_option('fmc_my_company');
delete_site_option('fmc_my_company');
delete_option('fmc_my_id');
delete_site_option('fmc_my_id');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('fmc_permabase_changed');
delete_site_transient('fmc_permabase_changed');
delete_transient('fmc_destlink_changed');
delete_site_transient('fmc_destlink_changed');
delete_transient('fmc_cache_tracker');
delete_site_transient('fmc_cache_tracker');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fmc_cache_%', '_site_transient_fmc_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('flexmls_auth_token');
delete_site_transient('flexmls_auth_token');
delete_transient('flexmls_auth_failures_timestamps');
delete_site_transient('flexmls_auth_failures_timestamps');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_flexmls_query_%', '_site_transient_flexmls_query_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fmc_api');
delete_site_transient('fmc_api');
delete_transient('fmc_last_authtoken');
delete_site_transient('fmc_last_authtoken');

// Clear Cron Jobs
wp_clear_scheduled_hook('flexmls_hourly_cache_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

