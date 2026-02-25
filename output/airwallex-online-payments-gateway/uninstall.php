<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('airwallex_enable_sandbox');
delete_site_option('airwallex_enable_sandbox');
delete_option('airwallex_payment_descriptor');
delete_site_option('airwallex_payment_descriptor');
delete_option('airwallex_payment_page_template');
delete_site_option('airwallex_payment_page_template');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'airwallex_connection_clicked_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('airwallex_connection_type');
delete_site_option('airwallex_connection_type');
delete_option('airwallex_submit_order_details');
delete_site_option('airwallex_submit_order_details');
delete_option('airwallex_temporary_order_status_after_decline');
delete_site_option('airwallex_temporary_order_status_after_decline');
delete_option('do_remote_logging');
delete_site_option('do_remote_logging');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_page_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('airwallex-online-payments-gatewayairwallex_afterpay_settings');
delete_site_option('airwallex-online-payments-gatewayairwallex_afterpay_settings');
delete_option('airwallex-online-payments-gatewayairwallex_card_settings');
delete_site_option('airwallex-online-payments-gatewayairwallex_card_settings');
delete_option('airwallex-online-payments-gatewayairwallex_klarna_settings');
delete_site_option('airwallex-online-payments-gatewayairwallex_klarna_settings');
delete_option('airwallex-online-payments-gatewayairwallex_main_settings');
delete_site_option('airwallex-online-payments-gatewayairwallex_main_settings');
delete_option('airwallex-online-payments-gatewayairwallex_pos_settings');
delete_site_option('airwallex-online-payments-gatewayairwallex_pos_settings');
delete_option('airwallex-online-payments-gatewayairwallex_wechat_settings');
delete_site_option('airwallex-online-payments-gatewayairwallex_wechat_settings');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_checkout_phone_field');
delete_site_option('woocommerce_checkout_phone_field');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pos_device' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('airwallex_client_id');
delete_site_option('airwallex_client_id');
delete_option('airwallex_api_key');
delete_site_option('airwallex_api_key');
delete_option('airwallex_webhook_secret');
delete_site_option('airwallex_webhook_secret');
delete_option('airwallex_order_status_pending');
delete_site_option('airwallex_order_status_pending');
delete_option('airwallex_order_status_authorized');
delete_site_option('airwallex_order_status_authorized');
delete_option('airwallex_cronjob_interval');
delete_site_option('airwallex_cronjob_interval');
delete_option('airwallex_do_remote_logging');
delete_site_option('airwallex_do_remote_logging');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'airwallex_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('airwallex_connection_clicked_demo');
delete_site_option('airwallex_connection_clicked_demo');
delete_option('airwallex_connection_clicked_prod');
delete_site_option('airwallex_connection_clicked_prod');
delete_option('airwallex_payment_method_card_page_id');
delete_site_option('airwallex_payment_method_card_page_id');
delete_option('airwallex_payment_method_wechat_page_id');
delete_site_option('airwallex_payment_method_wechat_page_id');
delete_option('airwallex_payment_method_all_page_id');
delete_site_option('airwallex_payment_method_all_page_id');
delete_option('airwallex_api_key_demo');
delete_site_option('airwallex_api_key_demo');
delete_option('airwallex_client_id_demo');
delete_site_option('airwallex_client_id_demo');
delete_option('airwallex_webhook_secret_demo');
delete_site_option('airwallex_webhook_secret_demo');
delete_option('airwallex_account_id_demo');
delete_site_option('airwallex_account_id_demo');
delete_option('airwallex_account_id');
delete_site_option('airwallex_account_id');
delete_option('airwallex_account_name_demo');
delete_site_option('airwallex_account_name_demo');
delete_option('airwallex_account_name');
delete_site_option('airwallex_account_name');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('airwallex_merchant_country');
delete_site_option('airwallex_merchant_country');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'number_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'number_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'number_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'number_type' ) );

