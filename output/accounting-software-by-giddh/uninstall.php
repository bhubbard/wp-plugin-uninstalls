<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('giddh_version');
delete_site_option('giddh_version');
delete_option('giddh_notification_email');
delete_site_option('giddh_notification_email');
delete_option('giddh_company_unique_name');
delete_site_option('giddh_company_unique_name');
delete_option('giddh_shop_unique_name');
delete_site_option('giddh_shop_unique_name');
delete_option('giddh_company_auth_key');
delete_site_option('giddh_company_auth_key');
delete_option('giddh_save_woocommerce_categories');
delete_site_option('giddh_save_woocommerce_categories');
delete_option('giddh_save_woocommerce_products');
delete_site_option('giddh_save_woocommerce_products');
delete_option('giddh_save_giddh_products');
delete_site_option('giddh_save_giddh_products');
delete_option('giddh_save_woocommerce_payment_gateways');
delete_site_option('giddh_save_woocommerce_payment_gateways');
delete_option('giddh_create_woocommerce_unmatched_to_giddh');
delete_site_option('giddh_create_woocommerce_unmatched_to_giddh');
delete_option('giddh_create_giddh_unmatched_to_woocommerce');
delete_site_option('giddh_create_giddh_unmatched_to_woocommerce');
delete_option('giddh_email_method');
delete_site_option('giddh_email_method');
delete_option('giddh_create_customer_account');
delete_site_option('giddh_create_customer_account');
delete_option('giddh_create_invoice');
delete_site_option('giddh_create_invoice');
delete_option('giddh_sendgrid_api_key');
delete_site_option('giddh_sendgrid_api_key');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('giddh_shipping_account');
delete_site_option('giddh_shipping_account');
delete_option('giddh_shipping_account_name');
delete_site_option('giddh_shipping_account_name');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sku' ) );

