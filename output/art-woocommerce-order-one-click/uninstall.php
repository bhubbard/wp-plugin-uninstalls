<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_awooc_active');
delete_site_option('woocommerce_awooc_active');
delete_option('woocommerce_awooc_text_rated');
delete_site_option('woocommerce_awooc_text_rated');
delete_option('woocommerce_price_decimal_sep');
delete_site_option('woocommerce_price_decimal_sep');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_price_thousand_sep');
delete_site_option('woocommerce_price_thousand_sep');
delete_option('woocommerce_awooc_mode_catalog');
delete_site_option('woocommerce_awooc_mode_catalog');
delete_option('woocommerce_awooc_output_catalog');
delete_site_option('woocommerce_awooc_output_catalog');
delete_option('woocommerce_awooc_title_button');
delete_site_option('woocommerce_awooc_title_button');
delete_option('woocommerce_awooc_title_custom');
delete_site_option('woocommerce_awooc_title_custom');
delete_option('woocommerce_awooc_select_form');
delete_site_option('woocommerce_awooc_select_form');
delete_option('woocommerce_placeholder_image');
delete_site_option('woocommerce_placeholder_image');
delete_option('woocommerce_awooc_change_subject');
delete_site_option('woocommerce_awooc_change_subject');
delete_option('woocommerce_awooc_enable_letter_template');
delete_site_option('woocommerce_awooc_enable_letter_template');
delete_option('woocommerce_awooc_created_order');
delete_site_option('woocommerce_awooc_created_order');
delete_option('woocommerce_awooc_change_name');
delete_site_option('woocommerce_awooc_change_name');
delete_option('woocommerce_awooc_not_del_settings');
delete_site_option('woocommerce_awooc_not_del_settings');
delete_option('woocommerce_awooc_select_item');
delete_site_option('woocommerce_awooc_select_item');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hash' ) );

