<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('machete_disabled_modules');
delete_site_option('machete_disabled_modules');
delete_option('machete_cleanup_settings');
delete_site_option('machete_cleanup_settings');
delete_option('machete_cookies_settings');
delete_site_option('machete_cookies_settings');
delete_option('machete_maintenance_settings');
delete_site_option('machete_maintenance_settings');
delete_option('machete_powertools_settings');
delete_site_option('machete_powertools_settings');
delete_option('machete_social_settings');
delete_site_option('machete_social_settings');
delete_option('machete_utils_settings');
delete_site_option('machete_utils_settings');
delete_option('machete_woocommerce_settings');
delete_site_option('machete_woocommerce_settings');
delete_option('machete_activation_welcome');
delete_site_option('machete_activation_welcome');

