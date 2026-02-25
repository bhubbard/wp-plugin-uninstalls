<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('thswc_since');
delete_site_option('thswc_since');
delete_option('thswc_user_role');
delete_site_option('thswc_user_role');
delete_option('thswc_user_email');
delete_site_option('thswc_user_email');
delete_option('thswc_brand_logo');
delete_site_option('thswc_brand_logo');
delete_option('thswc_brand_color');
delete_site_option('thswc_brand_color');
delete_option('woocommerce_ship_to_destination');
delete_site_option('woocommerce_ship_to_destination');
delete_option('woocommerce_enable_order_comments');
delete_site_option('woocommerce_enable_order_comments');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('woocommerce_enable_shipping_calc');
delete_site_option('woocommerce_enable_shipping_calc');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_thswc_check_preview_%', '_site_transient_thswc_check_preview_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_thswc_template_preview%', '_site_transient_thswc_template_preview%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('thswc_installing');
delete_site_transient('thswc_installing');

