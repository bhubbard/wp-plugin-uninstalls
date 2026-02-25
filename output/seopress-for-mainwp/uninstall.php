<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seopress_google_analytics_option_name');
delete_site_option('seopress_google_analytics_option_name');
delete_option('seopress_pro_license_key');
delete_site_option('seopress_pro_license_key');
delete_option('seopress_pro_license_status');
delete_site_option('seopress_pro_license_status');
delete_option('mainwp_seopress_current_site_settings');
delete_site_option('mainwp_seopress_current_site_settings');
delete_option('seopress_pro_option_name');
delete_site_option('seopress_pro_option_name');
delete_option('seopress_toggle');
delete_site_option('seopress_toggle');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seopress_mainwp_external_tax%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('seopress_mainwp_external_load_set');
delete_site_option('seopress_mainwp_external_load_set');
delete_option('mainwp_seopress_dashboard');
delete_site_option('mainwp_seopress_dashboard');

