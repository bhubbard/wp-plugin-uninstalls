<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qreuz_db_version');
delete_site_option('qreuz_db_version');
delete_option('qreuz_user_data_auth_status');
delete_site_option('qreuz_user_data_auth_status');
delete_option('qreuz_smart_pricing_premium_category');
delete_site_option('qreuz_smart_pricing_premium_category');
delete_option('qreuz_smart_pricing_premium_percent');
delete_site_option('qreuz_smart_pricing_premium_percent');
delete_option('qreuz_smart_pricing_sale_category');
delete_site_option('qreuz_smart_pricing_sale_category');
delete_option('qreuz_smart_pricing_sale_percent');
delete_site_option('qreuz_smart_pricing_sale_percent');
delete_option('qreuz_smart_pricing_price_scheme');
delete_site_option('qreuz_smart_pricing_price_scheme');
delete_option('qreuz_tracking_method');
delete_site_option('qreuz_tracking_method');
delete_option('qreuz_user_data_toqen');
delete_site_option('qreuz_user_data_toqen');
delete_option('qreuz_user_data_qkey');
delete_site_option('qreuz_user_data_qkey');
delete_option('qreuz_user_data_email');
delete_site_option('qreuz_user_data_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qreuz_track_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qreuz_track_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qreuz_track_woocommerce_thankyou_done' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qreuz_track_woocommerce_thankyou_done' ) );

