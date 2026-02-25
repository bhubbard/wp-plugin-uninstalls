<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpjup_wc_cond_shipping_plugin_enabled');
delete_site_option('wpjup_wc_cond_shipping_plugin_enabled');
delete_option('wpjup_wc_cond_shipping_add_variations');
delete_site_option('wpjup_wc_cond_shipping_add_variations');
delete_option('wpjup_wc_cond_shipping_validate_all');
delete_site_option('wpjup_wc_cond_shipping_validate_all');
delete_option('wpjup_wc_cond_shipping_cart_not_package');
delete_site_option('wpjup_wc_cond_shipping_cart_not_package');
delete_option('wpjup_wc_cond_shipping_debug');
delete_site_option('wpjup_wc_cond_shipping_debug');
delete_option('alg_wc_cond_shipping_logical_operator');
delete_site_option('alg_wc_cond_shipping_logical_operator');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_default_gateway');
delete_site_option('woocommerce_default_gateway');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpjup_wc_cond_shipping_checkout_notice');
delete_site_option('wpjup_wc_cond_shipping_checkout_notice');
delete_option('wpjup_wc_cond_shipping_version');
delete_site_option('wpjup_wc_cond_shipping_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

