<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_gtin_schema_admin_tab_in_loop');
delete_site_option('wc_gtin_schema_admin_tab_in_loop');
delete_option('wc_gtin_schema_admin_tab_in_single_product');
delete_site_option('wc_gtin_schema_admin_tab_in_single_product');
delete_option('wc_gtin_schema_admin_tab_in_cart');
delete_site_option('wc_gtin_schema_admin_tab_in_cart');
delete_option('wc_gtin_schema_admin_tab_in_order_item');
delete_site_option('wc_gtin_schema_admin_tab_in_order_item');
delete_option('wc_gtin_schema_admin_tab_single_product_position');
delete_site_option('wc_gtin_schema_admin_tab_single_product_position');
delete_option('wc_gtin_schema_admin_tab_single_product_tab');
delete_site_option('wc_gtin_schema_admin_tab_single_product_tab');
delete_option('wc_gtin_schema_admin_tab_in_checkout');
delete_site_option('wc_gtin_schema_admin_tab_in_checkout');
delete_option('gtin_schema_product_date_structure');
delete_site_option('gtin_schema_product_date_structure');
delete_option('wc_gtin_schema_admin_tab_label');
delete_site_option('wc_gtin_schema_admin_tab_label');
delete_option('wc_gtin_schema_admin_tab_get_get_sku');
delete_site_option('wc_gtin_schema_admin_tab_get_get_sku');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gtin_schema_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gtin_schema_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gtin_schema_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gtin_schema_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

