<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_fields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_fields_billing');
delete_site_option('wc_fields_billing');
delete_option('wc_fields_shipping');
delete_site_option('wc_fields_shipping');
delete_option('wc_fields_additional');
delete_site_option('wc_fields_additional');
delete_option('__dcfem_asset_version');
delete_site_option('__dcfem_asset_version');
delete_option('dcfem_do_activation_redirect');
delete_site_option('dcfem_do_activation_redirect');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');

