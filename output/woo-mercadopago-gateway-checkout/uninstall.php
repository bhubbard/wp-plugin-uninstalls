<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc-mercadopago-plus-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_wc_mp_plus_gateway_bricks_settings');
delete_site_option('woocommerce_wc_mp_plus_gateway_bricks_settings');
delete_option('wc-mpp_options');
delete_site_option('wc-mpp_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%-notices', '_site_transient_%-notices' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

