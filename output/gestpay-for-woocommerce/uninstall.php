<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_gestpay_shop_login');
delete_site_option('wc_gestpay_shop_login');
delete_option('wc_gestpay_account_type');
delete_site_option('wc_gestpay_account_type');
delete_option('wc_gestpay_api_key');
delete_site_option('wc_gestpay_api_key');
delete_option('wc_gestpay_test_url');
delete_site_option('wc_gestpay_test_url');
delete_option('wc_gestpay_force_recrypt');
delete_site_option('wc_gestpay_force_recrypt');
delete_option('wc_gestpay_force_check_gateway_response');
delete_site_option('wc_gestpay_force_check_gateway_response');
delete_option('wc_gestpay_debug');
delete_site_option('wc_gestpay_debug');
delete_option('wc_gateway_gestpay_moto_sep');
delete_site_option('wc_gateway_gestpay_moto_sep');
delete_option('wc_gateway_gestpay_order_status');
delete_site_option('wc_gateway_gestpay_order_status');
delete_option('wc_gestpay_param_tokenization_send_cvv');
delete_site_option('wc_gestpay_param_tokenization_send_cvv');
delete_option('wc_gestpay_param_tokenization_save_token');
delete_site_option('wc_gestpay_param_tokenization_save_token');
delete_option('wc_gestpay_token_auth');
delete_site_option('wc_gestpay_token_auth');
delete_option('wc_gestpay_param_buyer_email');
delete_site_option('wc_gestpay_param_buyer_email');
delete_option('wc_gestpay_param_buyer_name');
delete_site_option('wc_gestpay_param_buyer_name');
delete_option('wc_gestpay_param_language');
delete_site_option('wc_gestpay_param_language');
delete_option('wc_gestpay_param_payment_types');
delete_site_option('wc_gestpay_param_payment_types');
delete_option('wc_gestpay_param_seller_protection');
delete_site_option('wc_gestpay_param_seller_protection');
delete_option('wc_gestpay_param_custominfo');
delete_site_option('wc_gestpay_param_custominfo');
delete_option('wc_gestpay_shop_login_recurring');
delete_site_option('wc_gestpay_shop_login_recurring');
delete_option('wc_gestpay_api_key_recurring');
delete_site_option('wc_gestpay_api_key_recurring');
delete_option('wc_gestpay_force_crypt_http');
delete_site_option('wc_gestpay_force_crypt_http');
delete_option('woocommerce_wc_gateway_gestpay_bancomatpay_settings');
delete_site_option('woocommerce_wc_gateway_gestpay_bancomatpay_settings');
delete_option('wc_gestpaypro_bancomatpay');
delete_site_option('wc_gestpaypro_bancomatpay');
delete_option('woocommerce_wc_gateway_gestpay_settings');
delete_site_option('woocommerce_wc_gateway_gestpay_settings');
delete_option('woocommerce_wc_gateway_gestpay_consel_settings');
delete_site_option('woocommerce_wc_gateway_gestpay_consel_settings');
delete_option('wc_gestpaypro_consel');
delete_site_option('wc_gestpaypro_consel');
delete_option('gestpay_wc_gateway_gestpay_flush_rewrite_rules_flag');
delete_site_option('gestpay_wc_gateway_gestpay_flush_rewrite_rules_flag');
delete_option('woocommerce_wc_gateway_gestpay_mybank_settings');
delete_site_option('woocommerce_wc_gateway_gestpay_mybank_settings');
delete_option('wc_gestpaypro_mybank');
delete_site_option('wc_gestpaypro_mybank');
delete_option('woocommerce_wc_gateway_gestpay_paypal_settings');
delete_site_option('woocommerce_wc_gateway_gestpay_paypal_settings');
delete_option('wc_gestpaypro_paypal');
delete_site_option('wc_gestpaypro_paypal');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_is_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wc_gestpaypro_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gestpay_mybank_list_%', '_site_transient_gestpay_mybank_list_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_gestpay_cc_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_gestpay_cc_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_gestpay_cc_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_gestpay_cc_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_gesp3ds2_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_gesp3ds2_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_gesp3ds2_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_gesp3ds2_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_payment_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_order_number_formatted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_order_number_formatted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_order_number_formatted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_order_number_formatted' ) );

