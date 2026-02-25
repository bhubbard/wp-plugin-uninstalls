<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_cashflows_card_settings');
delete_site_option('woocommerce_cashflows_card_settings');
delete_option('woocommerce_cashflows_paypal_settings');
delete_site_option('woocommerce_cashflows_paypal_settings');
delete_option('iccf_debug');
delete_site_option('iccf_debug');
delete_option('iccf_develop');
delete_site_option('iccf_develop');
delete_option('iccf_prod_api_key');
delete_site_option('iccf_prod_api_key');
delete_option('iccf_prod_configuration_id');
delete_site_option('iccf_prod_configuration_id');
delete_option('iccf_int_api_key');
delete_site_option('iccf_int_api_key');
delete_option('iccf_int_configuration_id');
delete_site_option('iccf_int_configuration_id');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('iccf_additional_data');
delete_site_option('iccf_additional_data');
delete_option('iccf_google_ananlytics');
delete_site_option('iccf_google_ananlytics');
delete_option('iccf_store_customer_data');
delete_site_option('iccf_store_customer_data');
delete_option('iccf_log_days_to_keep');
delete_site_option('iccf_log_days_to_keep');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cashflows_int_customerReference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cashflows_int_customerReference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cashflows_int_customerReference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cashflows_int_customerReference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cashflows_prod_customerReference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cashflows_prod_customerReference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cashflows_prod_customerReference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cashflows_prod_customerReference' ) );

