<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tt4b_version');
delete_site_option('tt4b_version');
delete_option('tt4b_last_product_sync_time');
delete_site_option('tt4b_last_product_sync_time');
delete_option('tt4b_external_business_id');
delete_site_option('tt4b_external_business_id');
delete_option('tt4b_external_data');
delete_site_option('tt4b_external_data');
delete_option('tt4b_app_id');
delete_site_option('tt4b_app_id');
delete_option('tt4b_secret');
delete_site_option('tt4b_secret');
delete_option('tt4b_access_token');
delete_site_option('tt4b_access_token');
delete_option('tt4b_external_data_key');
delete_site_option('tt4b_external_data_key');
delete_option('tt4b_user_country');
delete_site_option('tt4b_user_country');
delete_option('tt4b_eligibility_page_total');
delete_site_option('tt4b_eligibility_page_total');
delete_option('tt4b_mapi_total_gmv');
delete_site_option('tt4b_mapi_total_gmv');
delete_option('tt4b_mapi_total_orders');
delete_site_option('tt4b_mapi_total_orders');
delete_option('tt4b_mapi_tenure');
delete_site_option('tt4b_mapi_tenure');
delete_option('tt4b_should_send_s2s_events');
delete_site_option('tt4b_should_send_s2s_events');
delete_option('tt4b_product_delete_queue');
delete_site_option('tt4b_product_delete_queue');
delete_option('tt4b_product_restore_queue');
delete_site_option('tt4b_product_restore_queue');
delete_option('tt4b_full_catalog_sync');
delete_site_option('tt4b_full_catalog_sync');
delete_option('tt4b_last_full_sync_time');
delete_site_option('tt4b_last_full_sync_time');
delete_option('tt4b_advertiser_id');
delete_site_option('tt4b_advertiser_id');
delete_option('tt4b_bc_id');
delete_site_option('tt4b_bc_id');
delete_option('tt4b_pixel_code');
delete_site_option('tt4b_pixel_code');
delete_option('tt4b_catalog_id');
delete_site_option('tt4b_catalog_id');
delete_option('tt4b_advanced_matching');
delete_site_option('tt4b_advanced_matching');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_phone');
delete_site_option('woocommerce_store_phone');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_city' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_country' ) );

