<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_yuansfer_settings');
delete_site_option('woocommerce_yuansfer_settings');
delete_option('wc_yuansfer_show_ssl_notice');
delete_site_option('wc_yuansfer_show_ssl_notice');
delete_option('wc_yuansfer_show_keys_notice');
delete_site_option('wc_yuansfer_show_keys_notice');
delete_option('wc_yuansfer_show_phpver_notice');
delete_site_option('wc_yuansfer_show_phpver_notice');
delete_option('wc_yuansfer_show_wcver_notice');
delete_site_option('wc_yuansfer_show_wcver_notice');
delete_option('wc_yuansfer_show_curl_notice');
delete_site_option('wc_yuansfer_show_curl_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_yuansfer_show_alipay_notice');
delete_site_option('wc_yuansfer_show_alipay_notice');
delete_option('wc_yuansfer_show_wechatpay_notice');
delete_site_option('wc_yuansfer_show_wechatpay_notice');
delete_option('wc_yuansfer_show_creditcard_notice');
delete_site_option('wc_yuansfer_show_creditcard_notice');
delete_option('wc_yuansfer_show_paypal_notice');
delete_site_option('wc_yuansfer_show_paypal_notice');
delete_option('wc_yuansfer_show_venmo_notice');
delete_site_option('wc_yuansfer_show_venmo_notice');
delete_option('woocommerce_gateway_yuansfer_retention');
delete_site_option('woocommerce_gateway_yuansfer_retention');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_yuansfer_show_request_api_notice');
delete_site_option('wc_yuansfer_show_request_api_notice');
delete_option('wc_yuansfer_version');
delete_site_option('wc_yuansfer_version');
delete_option('woocommerce_yuansfer_alipay_settings');
delete_site_option('woocommerce_yuansfer_alipay_settings');
delete_option('woocommerce_yuansfer_wechatpay_settings');
delete_site_option('woocommerce_yuansfer_wechatpay_settings');
delete_option('woocommerce_yuansfer_creditcard_settings');
delete_site_option('woocommerce_yuansfer_creditcard_settings');
delete_option('woocommerce_yuansfer_paypal_settings');
delete_site_option('woocommerce_yuansfer_paypal_settings');
delete_option('woocommerce_yuansfer_venmo_settings');
delete_site_option('woocommerce_yuansfer_venmo_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yuansfer_customer_%', '_site_transient_yuansfer_customer_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yuansfer_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yuansfer_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yuansfer_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yuansfer_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yuansfer_source_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yuansfer_source_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yuansfer_source_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yuansfer_source_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yuansfer_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yuansfer_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yuansfer_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yuansfer_refund_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yuansfer_card_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yuansfer_card_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yuansfer_card_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yuansfer_card_id' ) );

