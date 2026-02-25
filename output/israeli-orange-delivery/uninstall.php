<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_iod_seller_company_name');
delete_site_option('wc_iod_seller_company_name');
delete_option('wc_iod_api_username');
delete_site_option('wc_iod_api_username');
delete_option('wc_iod_api_password');
delete_site_option('wc_iod_api_password');
delete_option('wc_iod_api_customer_code');
delete_site_option('wc_iod_api_customer_code');
delete_option('wc_iod_seller_company_address_1');
delete_site_option('wc_iod_seller_company_address_1');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('wc_iod_seller_company_address_2');
delete_site_option('wc_iod_seller_company_address_2');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('wc_iod_seller_company_city');
delete_site_option('wc_iod_seller_company_city');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('wc_iod_seller_company_postcode');
delete_site_option('wc_iod_seller_company_postcode');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_iod_check_order_shipping_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_iod_delivery_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_iod_delivery_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_iod_delivery_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_iod_delivery_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_iod_delivery_branch_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_iod_delivery_branch_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_iod_delivery_branch_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_iod_delivery_branch_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_iod_delivery_distrubution_line_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_iod_delivery_distrubution_line_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_iod_delivery_distrubution_line_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_iod_delivery_distrubution_line_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_iod_response_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_iod_response_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_iod_response_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_iod_response_data' ) );

