<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('caaps_amazon-product-shop-settings');
delete_site_option('caaps_amazon-product-shop-settings');
delete_option('caaps_amazon-product-shop-displayoptions');
delete_site_option('caaps_amazon-product-shop-displayoptions');
delete_option('caaps_amazonshop_frontpageid');
delete_site_option('caaps_amazonshop_frontpageid');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_caaps_transient_%', '_site_transient_caaps_transient_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

