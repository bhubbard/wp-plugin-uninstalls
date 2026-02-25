<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('payplus_invoice_option');
delete_site_option('payplus_invoice_option');
delete_option('woocommerce_payplus-payment-gateway_settings');
delete_site_option('woocommerce_payplus-payment-gateway_settings');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_payplus-payment-gateway-applepay_settings');
delete_site_option('woocommerce_payplus-payment-gateway-applepay_settings');
delete_option('woocommerce_payplus-payment-gateway-hostedfields_settings');
delete_site_option('woocommerce_payplus-payment-gateway-hostedfields_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_payplus_display_embedded_count');
delete_site_option('wc_payplus_display_embedded_count');
delete_option('woocommerce_payplus-payment-gateway-pos-emv_settings');
delete_site_option('woocommerce_payplus-payment-gateway-pos-emv_settings');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('payplus-payment-gateway-multipass');
delete_site_option('payplus-payment-gateway-multipass');
delete_option('payplus_create_invoice');
delete_site_option('payplus_create_invoice');
delete_option('payplus_db_version');
delete_site_option('payplus_db_version');
delete_option('settings_payplus_page_error_option');
delete_site_option('settings_payplus_page_error_option');
delete_option('error_page_payplus');
delete_site_option('error_page_payplus');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('payplus_apple_pay_identifier');
delete_site_option('payplus_apple_pay_identifier');
delete_option('payplus_clearing_companies');
delete_site_option('payplus_clearing_companies');
delete_option('payplus_issuers_companies');
delete_site_option('payplus_issuers_companies');
delete_option('payplus_brands');
delete_site_option('payplus_brands');
delete_option('payplus_generate_key_link_dashboard');
delete_site_option('payplus_generate_key_link_dashboard');
delete_option('wc_payplus_version');
delete_site_option('wc_payplus_version');
delete_option('wc_payplus_display_maam_count');
delete_site_option('wc_payplus_display_maam_count');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

// Delete Transients
delete_transient('payplus_plugin_integrity_check_failed');
delete_site_transient('payplus_plugin_integrity_check_failed');
delete_transient('payplus_plugin_integrity_check_success');
delete_site_transient('payplus_plugin_integrity_check_success');
delete_transient('payplus_admin_notice');
delete_site_transient('payplus_admin_notice');
delete_transient('payment_ips');
delete_site_transient('payment_ips');

// Clear Cron Jobs
wp_clear_scheduled_hook('payplus_hourly_cron_job');
wp_clear_scheduled_hook('payplus_twice_hourly_cron_job');
wp_clear_scheduled_hook('payplus_invoice_runner_cron_job');
wp_clear_scheduled_hook('payplus_delayed_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cc_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cc_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cc_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cc_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'order_validated_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'order_validated_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'order_validated_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'order_validated_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'payplus_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'payplus_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'payplus_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'payplus_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'payplus_transaction_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'payplus_transaction_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'payplus_transaction_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'payplus_transaction_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'payplus_error_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'payplus_error_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'payplus_error_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'payplus_error_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'payplus_balance_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'payplus_balance_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'payplus_balance_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'payplus_balance_name' ) );

