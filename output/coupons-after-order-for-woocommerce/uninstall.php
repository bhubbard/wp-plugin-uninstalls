<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_coupons_after_order_settings');
delete_site_option('woocommerce_coupons_after_order_settings');
delete_option('wccao_coupons_after_order_email_subject');
delete_site_option('wccao_coupons_after_order_email_subject');
delete_option('wccao_coupons_after_order_email_header');
delete_site_option('wccao_coupons_after_order_email_header');
delete_option('wccao_coupons_after_order_email_content');
delete_site_option('wccao_coupons_after_order_email_content');
delete_option('wccao_coupons_after_order_email_bt_title');
delete_site_option('wccao_coupons_after_order_email_bt_title');
delete_option('wccao_coupons_after_order_email_bt_url');
delete_site_option('wccao_coupons_after_order_email_bt_url');
delete_option('wccao_coupons_after_order_email_bt_color');
delete_site_option('wccao_coupons_after_order_email_bt_color');
delete_option('wccao_coupons_after_order_email_bt_bg_color');
delete_site_option('wccao_coupons_after_order_email_bt_bg_color');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('wccao_coupons_after_order_coupon_font_color');
delete_site_option('wccao_coupons_after_order_coupon_font_color');
delete_option('wccao_coupons_after_order_coupon_bg_color');
delete_site_option('wccao_coupons_after_order_coupon_bg_color');
delete_option('wccao_coupons_after_order_email_bt_font_size');
delete_site_option('wccao_coupons_after_order_email_bt_font_size');
delete_option('wccao_coupons_after_order_enable');
delete_site_option('wccao_coupons_after_order_enable');
delete_option('wccao_coupons_after_order_availability_start_enabled');
delete_site_option('wccao_coupons_after_order_availability_start_enabled');
delete_option('wccao_coupons_after_order_availability_start_date');
delete_site_option('wccao_coupons_after_order_availability_start_date');
delete_option('wccao_coupons_after_order_validity_type');
delete_site_option('wccao_coupons_after_order_validity_type');
delete_option('wccao_coupons_after_order_validitydays');
delete_site_option('wccao_coupons_after_order_validitydays');
delete_option('wccao_coupons_after_order_validitydate');
delete_site_option('wccao_coupons_after_order_validitydate');
delete_option('wccao_coupons_after_order_count');
delete_site_option('wccao_coupons_after_order_count');
delete_option('wccao_coupons_after_order_usage_limit');
delete_site_option('wccao_coupons_after_order_usage_limit');
delete_option('wccao_coupons_after_order_individual_use');
delete_site_option('wccao_coupons_after_order_individual_use');
delete_option('wccao_coupons_after_order_min_amount');
delete_site_option('wccao_coupons_after_order_min_amount');
delete_option('wccao_coupons_after_order_email_restriction');
delete_site_option('wccao_coupons_after_order_email_restriction');
delete_option('wccao_coupons_after_order_prefix');
delete_site_option('wccao_coupons_after_order_prefix');
delete_option('wccao_coupons_after_order_url_parameter');
delete_site_option('wccao_coupons_after_order_url_parameter');
delete_option('wccao_coupons_after_order_data_uninstall');
delete_site_option('wccao_coupons_after_order_data_uninstall');
delete_option('woocommerce_email_background_color');
delete_site_option('woocommerce_email_background_color');
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wccao_customer_coupons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wccao_customer_coupons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wccao_customer_coupons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wccao_customer_coupons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_coupons_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_coupons_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_coupons_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_coupons_generated' ) );

