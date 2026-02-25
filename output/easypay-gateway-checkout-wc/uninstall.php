<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easypay_store_key');
delete_site_option('easypay_store_key');
delete_option('epwc_multiple_checkout');
delete_site_option('epwc_multiple_checkout');
delete_option('easypay_sandbox');
delete_site_option('easypay_sandbox');
delete_option('epwc_allowed_payment_methods');
delete_site_option('epwc_allowed_payment_methods');
delete_option('epwc_force_multiple_checkout');
delete_site_option('epwc_force_multiple_checkout');
delete_option('epwc_plugin_settings');
delete_site_option('epwc_plugin_settings');
delete_option('easypay_logo');
delete_site_option('easypay_logo');
delete_option('epwc_checkout_display');
delete_site_option('epwc_checkout_display');
delete_option('epwc_checkout_hide_details');
delete_site_option('epwc_checkout_hide_details');
delete_option('epwc_checkout_order_flow');
delete_site_option('epwc_checkout_order_flow');
delete_option('woocommerce_applepay_checkout_settings');
delete_site_option('woocommerce_applepay_checkout_settings');
delete_option('woocommerce_virtualiban_checkout_settings');
delete_site_option('woocommerce_virtualiban_checkout_settings');
delete_option('woocommerce_creditcard_checkout_settings');
delete_site_option('woocommerce_creditcard_checkout_settings');
delete_option('woocommerce_debitodireto_checkout_settings');
delete_site_option('woocommerce_debitodireto_checkout_settings');
delete_option('epwc_woocommerce_easypay_checkout_settings');
delete_site_option('epwc_woocommerce_easypay_checkout_settings');
delete_option('woocommerce_googlepay_checkout_settings');
delete_site_option('woocommerce_googlepay_checkout_settings');
delete_option('woocommerce_mbway_checkout_settings');
delete_site_option('woocommerce_mbway_checkout_settings');
delete_option('woocommerce_multibanco_checkout_settings');
delete_site_option('woocommerce_multibanco_checkout_settings');
delete_option('woocommerce_santanderconsumer_checkout_settings');
delete_site_option('woocommerce_santanderconsumer_checkout_settings');
delete_option('woocommerce_universoflex_checkout_settings');
delete_site_option('woocommerce_universoflex_checkout_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fiscal_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fiscal_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fiscal_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fiscal_number' ) );

