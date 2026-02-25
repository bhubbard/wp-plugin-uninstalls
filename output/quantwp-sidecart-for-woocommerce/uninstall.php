<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quantwp_sidecart_cross_sells_limit');
delete_site_option('quantwp_sidecart_cross_sells_limit');
delete_option('quantwp_sidecart_cross_sells_enabled');
delete_site_option('quantwp_sidecart_cross_sells_enabled');
delete_option('quantwp_sidecart_auto_open');
delete_site_option('quantwp_sidecart_auto_open');
delete_option('quantwp_sidecart_shipping_bar_enabled');
delete_site_option('quantwp_sidecart_shipping_bar_enabled');
delete_option('quantwp_sidecart_shipping_threshold');
delete_site_option('quantwp_sidecart_shipping_threshold');
delete_option('quantwp_sidecart_icon');
delete_site_option('quantwp_sidecart_icon');
delete_option('quantwp_sidecart_shipping_threshold_color');
delete_site_option('quantwp_sidecart_shipping_threshold_color');
delete_option('quantwp_sidecart_carousel_background_color');
delete_site_option('quantwp_sidecart_carousel_background_color');
delete_option('quantwp_sidecart_checkout_btn_bg');
delete_site_option('quantwp_sidecart_checkout_btn_bg');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_quantwp_cross_sells_%', '_site_transient_quantwp_cross_sells_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('quantwp_shipping_threshold');
delete_site_transient('quantwp_shipping_threshold');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_quantwp_cart_fragment_%', '_site_transient_quantwp_cart_fragment_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

