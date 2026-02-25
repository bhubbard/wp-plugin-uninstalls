<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vimeography_corrupt_keys_found');
delete_site_option('vimeography_corrupt_keys_found');
delete_option('vimeography_activation_keys');
delete_site_option('vimeography_activation_keys');
delete_option('vimeography_pro_db_version');
delete_site_option('vimeography_pro_db_version');
delete_option('vimeography_default_settings');
delete_site_option('vimeography_default_settings');
delete_option('vimeography_pro_access_token');
delete_site_option('vimeography_pro_access_token');
delete_option('vimeography_access_token');
delete_site_option('vimeography_access_token');
delete_option('vimeography_db_version');
delete_site_option('vimeography_db_version');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_response', '_site_transient_%_response' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_vimeography_welcome_screen_activation_redirect');
delete_site_transient('_vimeography_welcome_screen_activation_redirect');

