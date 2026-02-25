<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbtwoo_position');
delete_site_option('fbtwoo_position');
delete_option('fbtwoo_title');
delete_site_option('fbtwoo_title');
delete_option('fbtwoo_button_text_no_product');
delete_site_option('fbtwoo_button_text_no_product');
delete_option('fbtwoo_button_text_one_product');
delete_site_option('fbtwoo_button_text_one_product');
delete_option('fbtwoo_button_text_two_product');
delete_site_option('fbtwoo_button_text_two_product');
delete_option('fbtwoo_button_text_three_product');
delete_site_option('fbtwoo_button_text_three_product');
delete_option('fbtwoo_button_color');
delete_site_option('fbtwoo_button_color');
delete_option('fbtwoo_button_color_hover');
delete_site_option('fbtwoo_button_color_hover');
delete_option('fbtwoo_button_text_color');
delete_site_option('fbtwoo_button_text_color');
delete_option('fbtwoo_button_text_color_hover');
delete_site_option('fbtwoo_button_text_color_hover');
delete_option('fbtwoo_save_text_color');
delete_site_option('fbtwoo_save_text_color');
delete_option('fbtwoo_total_text');
delete_site_option('fbtwoo_total_text');
delete_option('fbtwoo_uninstall_remove_data');
delete_site_option('fbtwoo_uninstall_remove_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fbtwoo_apply_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fbtwoo_apply_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fbtwoo_apply_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fbtwoo_apply_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fbtwoo_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fbtwoo_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fbtwoo_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fbtwoo_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fbtwoo_discount_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fbtwoo_discount_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fbtwoo_discount_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fbtwoo_discount_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fbtwoo_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fbtwoo_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fbtwoo_product_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fbtwoo_product_ids' ) );

