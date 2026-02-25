<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_stripe_terminal_settings');
delete_site_option('woocommerce_stripe_terminal_settings');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_stripe_settings');
delete_site_option('woocommerce_stripe_settings');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('wc_stripe_terminal_version');
delete_site_option('wc_stripe_terminal_version');
delete_option('wc_stripe_show_terminal_notice');
delete_site_option('wc_stripe_show_terminal_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stripe_intent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stripe_intent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stripe_intent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stripe_intent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stripe_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stripe_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stripe_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stripe_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_user' ) );

