<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_gstin_number');
delete_site_option('woocommerce_gstin_number');
delete_option('woocommerce_product_types');
delete_site_option('woocommerce_product_types');
delete_option('woocommerce_gst_multi_select_slab');
delete_site_option('woocommerce_gst_multi_select_slab');
delete_option('woocommerce_gst_single_select_slab');
delete_site_option('woocommerce_gst_single_select_slab');
delete_option('woocommerce_tax_classes');
delete_site_option('woocommerce_tax_classes');
delete_option('woocommerce_store_state');
delete_site_option('woocommerce_store_state');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_gst_telemetry_optin');
delete_site_option('wc_gst_telemetry_optin');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hsn_prod_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hsn_prod_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hsn_prod_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hsn_prod_id' ) );

