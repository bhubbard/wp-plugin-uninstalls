<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_qliro_one_settings');
delete_site_option('woocommerce_qliro_one_settings');
delete_option('woocommerce_qliro_one_banner_widget_enabled');
delete_site_option('woocommerce_qliro_one_banner_widget_enabled');
delete_option('woocommerce_qliro_one_payment_widget_enabled');
delete_site_option('woocommerce_qliro_one_payment_widget_enabled');
delete_option('krokedil_debuglog_qliro_one');
delete_site_option('krokedil_debuglog_qliro_one');
delete_option('woocommerce_smart_coupon_apply_before_tax');
delete_site_option('woocommerce_smart_coupon_apply_before_tax');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_qoc_shipping_data_%', '_site_transient_qoc_shipping_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('qliro_checkout_settings_page_config');
delete_site_transient('qliro_checkout_settings_page_config');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipping_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipping_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipping_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipping_email' ) );

