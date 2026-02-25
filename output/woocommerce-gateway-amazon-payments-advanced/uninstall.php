<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_gzd_checkout_stop_order_cancellation');
delete_site_option('woocommerce_gzd_checkout_stop_order_cancellation');
delete_option('amazon_payments_advanced_enabled_anniversary_date');
delete_site_option('amazon_payments_advanced_enabled_anniversary_date');
delete_option('amazon_payments_advanced_hidden_until_date');
delete_site_option('amazon_payments_advanced_hidden_until_date');
delete_option('woocommerce_amazon_payments_advanced_saved_payload');
delete_site_option('woocommerce_amazon_payments_advanced_saved_payload');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('amazon_pay_simulation_stack');
delete_site_option('amazon_pay_simulation_stack');
delete_option('woocommerce_amazon_payments_advanced_settings');
delete_site_option('woocommerce_amazon_payments_advanced_settings');
delete_option('amazon_api_version');
delete_site_option('amazon_api_version');
delete_option('woocommerce_amazon_payments_new_install');
delete_site_option('woocommerce_amazon_payments_new_install');
delete_option('woocommerce_subscriptions_turn_off_automatic_payments');
delete_site_option('woocommerce_subscriptions_turn_off_automatic_payments');
delete_option('woocs_is_multiple_allowed');
delete_site_option('woocs_is_multiple_allowed');
delete_option('_wcml_settings');
delete_site_option('_wcml_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amazon_reference_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amazon_reference_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amazon_reference_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amazon_reference_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amazon_reference_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amazon_reference_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amazon_reference_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amazon_reference_id' ) );

