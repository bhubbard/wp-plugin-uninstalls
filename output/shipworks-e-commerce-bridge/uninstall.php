<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_order_number_prefix');
delete_site_option('woocommerce_order_number_prefix');
delete_option('woocommerce_order_number_suffix');
delete_site_option('woocommerce_order_number_suffix');
delete_option('adv_timestamp');
delete_site_option('adv_timestamp');
delete_option('show_coupon_shipAdv');
delete_site_option('show_coupon_shipAdv');
delete_option('show_private_message_shipAdv');
delete_site_option('show_private_message_shipAdv');
delete_option('show_customer_message_shipAdv');
delete_site_option('show_customer_message_shipAdv');
delete_option('show_variationId_shipAdv');
delete_site_option('show_variationId_shipAdv');
delete_option('show_SKU_shipAdv');
delete_site_option('show_SKU_shipAdv');
delete_option('download_virtualProd_shipAdv');
delete_site_option('download_virtualProd_shipAdv');
delete_option('woocommerce_api_shipAdv');
delete_site_option('woocommerce_api_shipAdv');
delete_option('admin_notes_restriction_shipAdv');
delete_site_option('admin_notes_restriction_shipAdv');
delete_option('aftership_option_name');
delete_site_option('aftership_option_name');
delete_option('adv_username');
delete_site_option('adv_username');
delete_option('adv_password');
delete_site_option('adv_password');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_customer_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_customer_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_customer_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_customer_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcms_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcms_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcms_packages' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcms_packages' ) );

