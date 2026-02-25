<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hippoo_ai_settings');
delete_site_option('hippoo_ai_settings');
delete_option('hippoo_settings');
delete_site_option('hippoo_settings');
delete_option('hippoo_activation_time');
delete_site_option('hippoo_activation_time');
delete_option('hippoo_review_dismissed');
delete_site_option('hippoo_review_dismissed');
delete_option('hippoo_rest_api_last_status');
delete_site_option('hippoo_rest_api_last_status');
delete_option('hippoo_rest_api_error_dismissed');
delete_site_option('hippoo_rest_api_error_dismissed');
delete_option('hippoo_permissions_settings');
delete_site_option('hippoo_permissions_settings');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('hippoo_invoice_settings');
delete_site_option('hippoo_invoice_settings');
delete_option('woocommerce_allowed_countries');
delete_site_option('woocommerce_allowed_countries');
delete_option('woocommerce_specific_allowed_countries');
delete_site_option('woocommerce_specific_allowed_countries');
delete_option('woocommerce_all_except_countries');
delete_site_option('woocommerce_all_except_countries');
delete_option('hippoo_notification_db_version');
delete_site_option('hippoo_notification_db_version');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('hippoo_dismissed_notice');
delete_site_option('hippoo_dismissed_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'out_stock_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'out_stock_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'out_stock_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'out_stock_time' ) );

