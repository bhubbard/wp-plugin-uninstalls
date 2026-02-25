<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_ppec_paypal_settings');
delete_site_option('woocommerce_ppec_paypal_settings');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('wc_gateway_ppce_display_decimal_msg');
delete_site_option('wc_gateway_ppce_display_decimal_msg');
delete_option('woocommerce_simplify_commerce_settings');
delete_site_option('woocommerce_simplify_commerce_settings');
delete_option('wc_ppec_display_wc_3_0_warning');
delete_site_option('wc_ppec_display_wc_3_0_warning');
delete_option('woocommerce_new_order_settings');
delete_site_option('woocommerce_new_order_settings');
delete_option('woo_pp_admin_error');
delete_site_option('woo_pp_admin_error');
delete_option('pp_woo_enabled');
delete_site_option('pp_woo_enabled');
delete_option('pp_woo_logoImageUrl');
delete_site_option('pp_woo_logoImageUrl');
delete_option('pp_woo_paymentAction');
delete_site_option('pp_woo_paymentAction');
delete_option('pp_woo_subtotalMismatchBehavior');
delete_site_option('pp_woo_subtotalMismatchBehavior');
delete_option('pp_woo_environment');
delete_site_option('pp_woo_environment');
delete_option('pp_woo_button_size');
delete_site_option('pp_woo_button_size');
delete_option('pp_woo_blockEChecks');
delete_site_option('pp_woo_blockEChecks');
delete_option('pp_woo_requireBillingAddress');
delete_site_option('pp_woo_requireBillingAddress');
delete_option('pp_woo_logging_enabled');
delete_site_option('pp_woo_logging_enabled');
delete_option('pp_woo_liveApiCredentials');
delete_site_option('pp_woo_liveApiCredentials');
delete_option('pp_woo_sandboxApiCredentials');
delete_site_option('pp_woo_sandboxApiCredentials');
delete_option('wc_ppec_version');
delete_site_option('wc_ppec_version');
delete_option('wc_gateway_ppec_bootstrap_warning_message_dismissed');
delete_site_option('wc_gateway_ppec_bootstrap_warning_message_dismissed');
delete_option('wc_gateway_ppec_prompt_to_connect_message_dismissed');
delete_site_option('wc_gateway_ppec_prompt_to_connect_message_dismissed');

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_paypal_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_paypal_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_paypal_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_paypal_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ppec_billing_agreement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ppec_billing_agreement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ppec_billing_agreement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ppec_billing_agreement_id' ) );

