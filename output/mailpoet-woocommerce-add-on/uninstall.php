<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailpoet_woocommerce_subscribe_too');
delete_site_option('mailpoet_woocommerce_subscribe_too');
delete_option('mailpoet_woocommerce_addon_version');
delete_site_option('mailpoet_woocommerce_addon_version');
delete_option('mailpoet_woocommerce_enable_checkout');
delete_site_option('mailpoet_woocommerce_enable_checkout');
delete_option('mailpoet_woocommerce_customer_selects');
delete_site_option('mailpoet_woocommerce_customer_selects');
delete_option('mailpoet_woocommerce_checkbox_status');
delete_site_option('mailpoet_woocommerce_checkbox_status');
delete_option('mailpoet_woocommerce_checkout_label');
delete_site_option('mailpoet_woocommerce_checkout_label');
delete_option('mailpoet_woocommerce_double_optin');
delete_site_option('mailpoet_woocommerce_double_optin');
delete_option('mailpoet_woocommerce_subscription_position');
delete_site_option('mailpoet_woocommerce_subscription_position');
delete_option('mailpoet_woocommerce_uninstall_data');
delete_site_option('mailpoet_woocommerce_uninstall_data');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mailpoet_wc_subscribed_to_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mailpoet_wc_subscribed_to_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mailpoet_wc_subscribed_to_newsletter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mailpoet_wc_subscribed_to_newsletter' ) );

