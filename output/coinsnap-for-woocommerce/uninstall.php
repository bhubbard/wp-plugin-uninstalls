<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('coinsnap_provider');
delete_site_option('coinsnap_provider');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('coinsnap_connection_status_display');
delete_site_option('coinsnap_connection_status_display');
delete_option('coinsnap_sats_mode');
delete_site_option('coinsnap_sats_mode');
delete_option('btcpay_server_url');
delete_site_option('btcpay_server_url');
delete_option('coinsnap_permalinks_flushed');
delete_site_option('coinsnap_permalinks_flushed');
delete_option('btcpay_api_key');
delete_site_option('btcpay_api_key');
delete_option('btcpay_store_id');
delete_site_option('btcpay_store_id');
delete_option('woocommerce_coinsnap_settings');
delete_site_option('woocommerce_coinsnap_settings');
delete_option('coinsnap_modal_checkout');
delete_site_option('coinsnap_modal_checkout');
delete_option('coinsnap_order_states');
delete_site_option('coinsnap_order_states');
delete_option('coinsnap_send_customer_data');
delete_site_option('coinsnap_send_customer_data');
delete_option('coinsnap_returnurl');
delete_site_option('coinsnap_returnurl');
delete_option('coinsnap_autoredirect');
delete_site_option('coinsnap_autoredirect');
delete_option('coinsnap_separate_gateways');
delete_site_option('coinsnap_separate_gateways');
delete_option('coinsnap_api_key');
delete_site_option('coinsnap_api_key');
delete_option('coinsnap_store_id');
delete_site_option('coinsnap_store_id');
delete_option('coinsnap_webhook');
delete_site_option('coinsnap_webhook');
delete_option('coinsnap_debug');
delete_site_option('coinsnap_debug');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'Coinsnap_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'Coinsnap_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'Coinsnap_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'Coinsnap_id' ) );

