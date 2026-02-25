<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpheaderandfooter_basics');
delete_site_option('wpheaderandfooter_basics');
delete_option('wpheaderandfooter_active_time');
delete_site_option('wpheaderandfooter_active_time');
delete_option('wpheaderandfooter_review_dismiss');
delete_site_option('wpheaderandfooter_review_dismiss');
delete_option('wpheaderandfooter_basics_logger');
delete_site_option('wpheaderandfooter_basics_logger');
delete_option('wpheaderandfooter_settings');
delete_site_option('wpheaderandfooter_settings');
delete_option('wpb_sdk_wp-headers-and-footers');
delete_site_option('wpb_sdk_wp-headers-and-footers');
delete_option('_wpheaderandfooter_optin');
delete_site_option('_wpheaderandfooter_optin');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpb_sdk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('login_customizer_options');
delete_site_option('login_customizer_options');
delete_option('login_customizer_settings');
delete_site_option('login_customizer_settings');
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

