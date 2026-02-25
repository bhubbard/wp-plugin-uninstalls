<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpb_sdk_under-construction-maintenance-mode');
delete_site_option('wpb_sdk_under-construction-maintenance-mode');
delete_option('_ucmm_optin');
delete_site_option('_ucmm_optin');
delete_option('ucmm_active_time');
delete_site_option('ucmm_active_time');
delete_option('ucmm_review_dismiss');
delete_site_option('ucmm_review_dismiss');
delete_option('ucmm_wpbrigade_setting');
delete_site_option('ucmm_wpbrigade_setting');
delete_option('ucmm_wpbrigade_customization');
delete_site_option('ucmm_wpbrigade_customization');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpb_sdk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpb_sdk_module_id');
delete_site_option('wpb_sdk_module_id');
delete_option('wpb_sdk_module_slug');
delete_site_option('wpb_sdk_module_slug');
delete_option('wpb_api_cache');
delete_site_option('wpb_api_cache');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs

