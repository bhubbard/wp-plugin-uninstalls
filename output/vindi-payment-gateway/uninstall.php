<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vindi_invalid_api_key');
delete_site_option('vindi_invalid_api_key');
delete_option('woocommerce_subscriptions_turn_off_automatic_payments');
delete_site_option('woocommerce_subscriptions_turn_off_automatic_payments');
delete_option('woocommerce_vindi-credit-card_settings');
delete_site_option('woocommerce_vindi-credit-card_settings');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('vindi_product_message');
delete_site_transient('vindi_product_message');
delete_transient('vindi_payment_methods');
delete_site_transient('vindi_payment_methods');
delete_transient('vindi_merchant');
delete_site_transient('vindi_merchant');
delete_transient('vindi_plans');
delete_site_transient('vindi_plans');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vindi_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vindi_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vindi_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vindi_customer_id' ) );

