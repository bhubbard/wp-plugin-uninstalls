<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_youcanpay_show_ssl_notice');
delete_site_option('wc_youcanpay_show_ssl_notice');
delete_option('wc_youcanpay_show_keys_notice');
delete_site_option('wc_youcanpay_show_keys_notice');
delete_option('wc_youcanpay_show_phpver_notice');
delete_site_option('wc_youcanpay_show_phpver_notice');
delete_option('wc_youcanpay_show_wcver_notice');
delete_site_option('wc_youcanpay_show_wcver_notice');
delete_option('wc_youcanpay_show_curl_notice');
delete_site_option('wc_youcanpay_show_curl_notice');
delete_option('woocommerce_youcanpay_settings');
delete_site_option('woocommerce_youcanpay_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_youcanpay_show_youcan_pay_notice');
delete_site_option('wc_youcanpay_show_youcan_pay_notice');
delete_option('wc_youcanpay_show_youcan_pay_standalone_notice');
delete_site_option('wc_youcanpay_show_youcan_pay_standalone_notice');
delete_option('woocommerce_gateway_youcanpay_retention');
delete_site_option('woocommerce_gateway_youcanpay_retention');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_youcanpay_show_standalone_notice');
delete_site_option('wc_youcanpay_show_standalone_notice');
delete_option('wc_youcanpay_version');
delete_site_option('wc_youcanpay_version');
delete_option('woocommerce_youcanpay_standalone_settings');
delete_site_option('woocommerce_youcanpay_standalone_settings');

