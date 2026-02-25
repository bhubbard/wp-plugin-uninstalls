<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_gateways_by_location_force_js_checkout_update');
delete_site_option('alg_wc_gateways_by_location_force_js_checkout_update');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%section_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('alg_wc_gateways_by_location_version');
delete_site_option('alg_wc_gateways_by_location_version');
delete_option('alg_wc_gateways_by_location_country_type');
delete_site_option('alg_wc_gateways_by_location_country_type');
delete_option('alg_wc_gateways_by_location_state_type');
delete_site_option('alg_wc_gateways_by_location_state_type');
delete_option('alg_wc_gateways_by_location_cities_type');
delete_site_option('alg_wc_gateways_by_location_cities_type');
delete_option('alg_wc_gateways_by_location_postcodes_type');
delete_site_option('alg_wc_gateways_by_location_postcodes_type');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

