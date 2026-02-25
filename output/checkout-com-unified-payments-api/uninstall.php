<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_wc_checkout_com_cards_settings');
delete_site_option('woocommerce_wc_checkout_com_cards_settings');
delete_option('woocommerce_wc_checkout_com_flow_settings');
delete_site_option('woocommerce_wc_checkout_com_flow_settings');
delete_option('woocommerce_wc_checkout_com_alternative_payments_settings');
delete_site_option('woocommerce_wc_checkout_com_alternative_payments_settings');
delete_option('woocommerce_wc_checkout_com_google_pay_settings');
delete_site_option('woocommerce_wc_checkout_com_google_pay_settings');
delete_option('woocommerce_wc_checkout_com_apple_pay_settings');
delete_site_option('woocommerce_wc_checkout_com_apple_pay_settings');
delete_option('woocommerce_wc_checkout_com_paypal_settings');
delete_site_option('woocommerce_wc_checkout_com_paypal_settings');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('checkoutcom_blocks_notice_dismissed');
delete_site_option('checkoutcom_blocks_notice_dismissed');
delete_option('woocommerce_checkout_pay_endpoint');
delete_site_option('woocommerce_checkout_pay_endpoint');
delete_option('cko_log_level');
delete_site_option('cko_log_level');
delete_option('cko_log_max_size_mb');
delete_site_option('cko_log_max_size_mb');
delete_option('cko_log_max_files');
delete_site_option('cko_log_max_files');
delete_option('cko_log_retention_days');
delete_site_option('cko_log_retention_days');
delete_option('cko_performance_logging');
delete_site_option('cko_performance_logging');
delete_option('cko_async_logging');
delete_site_option('cko_async_logging');
delete_option('cko_log_buffer_size');
delete_site_option('cko_log_buffer_size');
delete_option('woocommerce_checkout_page_id');
delete_site_option('woocommerce_checkout_page_id');

// Delete Transients
delete_transient('cko_last_log_cleanup');
delete_site_transient('cko_last_log_cleanup');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cko_validation_email_%', '_site_transient_cko_validation_email_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cko_validation_address_%', '_site_transient_cko_validation_address_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cko_flow_incomplete_order_notice_%', '_site_transient_cko_flow_incomplete_order_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cko_log_cleanup');
wp_clear_scheduled_hook('cko_cleanup_old_webhooks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_price' ) );

