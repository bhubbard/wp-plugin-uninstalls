<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_tradesafe_settings');
delete_site_option('woocommerce_tradesafe_settings');
delete_option('tradesafe_api_access');
delete_site_option('tradesafe_api_access');
delete_option('dokan_selling');
delete_site_option('dokan_selling');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_default_gateway');
delete_site_option('woocommerce_default_gateway');
delete_option('tradesafe_client_id');
delete_site_option('tradesafe_client_id');
delete_option('tradesafe_client_secret');
delete_site_option('tradesafe_client_secret');
delete_option('tradesafe_transaction_industry');
delete_site_option('tradesafe_transaction_industry');
delete_option('tradesafe_production_mode');
delete_site_option('tradesafe_production_mode');
delete_option('tradesafe_transaction_marketplace');
delete_site_option('tradesafe_transaction_marketplace');
delete_option('tradesafe_transaction_fee_allocation');
delete_site_option('tradesafe_transaction_fee_allocation');
delete_option('tradesafe_transaction_fee');
delete_site_option('tradesafe_transaction_fee');
delete_option('tradesafe_transaction_fee_type');
delete_site_option('tradesafe_transaction_fee_type');
delete_option('processing_fee');
delete_site_option('processing_fee');
delete_option('tradesafe_payment_gateway_version');
delete_site_option('tradesafe_payment_gateway_version');

// Delete Transients
delete_transient('tradesafe_client_info');
delete_site_transient('tradesafe_client_info');
delete_transient('tradesafe_client_token');
delete_site_transient('tradesafe_client_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dokan_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dokan_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dokan_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dokan_profile_settings' ) );

