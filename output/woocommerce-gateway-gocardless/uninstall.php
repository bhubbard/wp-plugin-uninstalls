<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_gocardless_settings');
delete_site_option('woocommerce_gocardless_settings');
delete_option('wc_gocardless_access_token_unauthorized');
delete_site_option('wc_gocardless_access_token_unauthorized');
delete_option('wc_gocardless_default_webhook_secret');
delete_site_option('wc_gocardless_default_webhook_secret');
delete_option('woocommerce_gocardless_default_webhook_secret');
delete_site_option('woocommerce_gocardless_default_webhook_secret');
delete_option('wc_gocardless_version');
delete_site_option('wc_gocardless_version');
delete_option('woocommerce_gocardless_version');
delete_site_option('woocommerce_gocardless_version');
delete_option('woocommerce_gocardless_settings_deprecated');
delete_site_option('woocommerce_gocardless_settings_deprecated');

// Delete Transients
delete_transient('wc_gocardless_available_scheme_identifiers');
delete_site_transient('wc_gocardless_available_scheme_identifiers');
delete_transient('wc_gocardless_connection_notice');
delete_site_transient('wc_gocardless_connection_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gocardless_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gocardless_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gocardless_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gocardless_customer_id' ) );

