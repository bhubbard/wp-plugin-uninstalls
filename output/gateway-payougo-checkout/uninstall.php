<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('wc_gateway_ppce_display_decimal_msg');
delete_site_option('wc_gateway_ppce_display_decimal_msg');
delete_option('woocommerce_simplify_commerce_settings');
delete_site_option('woocommerce_simplify_commerce_settings');
delete_option('wc_pyg_display_wc_3_0_warning');
delete_site_option('wc_pyg_display_wc_3_0_warning');
delete_option('woocommerce_product_type');
delete_site_option('woocommerce_product_type');
delete_option('woocommerce_force_ssl_checkout');
delete_site_option('woocommerce_force_ssl_checkout');
delete_option('pp_woo_enabled');
delete_site_option('pp_woo_enabled');
delete_option('woocommerce_pyg_payougo_settings');
delete_site_option('woocommerce_pyg_payougo_settings');
delete_option('pp_woo_environment');
delete_site_option('pp_woo_environment');
delete_option('pp_woo_blockEChecks');
delete_site_option('pp_woo_blockEChecks');
delete_option('pp_woo_requireBillingAddress');
delete_site_option('pp_woo_requireBillingAddress');
delete_option('pp_woo_logging_enabled');
delete_site_option('pp_woo_logging_enabled');
delete_option('pp_woo_useraccount');
delete_site_option('pp_woo_useraccount');
delete_option('pp_woo_passwordaccount');
delete_site_option('pp_woo_passwordaccount');
delete_option('pp_woo_apikeypayougo');
delete_site_option('pp_woo_apikeypayougo');
delete_option('pp_woo_customerbuyer');
delete_site_option('pp_woo_customerbuyer');
delete_option('pp_woo_merchantaccountpayougo');
delete_site_option('pp_woo_merchantaccountpayougo');
delete_option('pp_woo_paymentsendemail');
delete_site_option('pp_woo_paymentsendemail');
delete_option('wc_pyg_version');
delete_site_option('wc_pyg_version');
delete_option('wc_gateway_pyg_bootstrap_warning_message_dismissed');
delete_site_option('wc_gateway_pyg_bootstrap_warning_message_dismissed');
delete_option('wc_gateway_pyg_prompt_to_connect_message_dismissed');
delete_site_option('wc_gateway_pyg_prompt_to_connect_message_dismissed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_order_stock_reduced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_order_stock_reduced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_order_stock_reduced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_order_stock_reduced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_pp_txnData' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_pp_txnData' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_pp_txnData' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_pp_txnData' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_payougo_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_payougo_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_payougo_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_payougo_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pyg_billing_agreement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pyg_billing_agreement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pyg_billing_agreement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pyg_billing_agreement_id' ) );

