<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('usp_upsell_products_visibility_ids');
delete_site_option('usp_upsell_products_visibility_ids');
delete_option('usp_upsell_products_forced_qty_ids');
delete_site_option('usp_upsell_products_forced_qty_ids');
delete_option('woocommerce_enable_ajax_add_to_cart');
delete_site_option('woocommerce_enable_ajax_add_to_cart');
delete_option('usp_cart_modalbox_enabled');
delete_site_option('usp_cart_modalbox_enabled');
delete_option('usp_cart_modalbox_heading');
delete_site_option('usp_cart_modalbox_heading');
delete_option('usp_cart_modalbox_delay');
delete_site_option('usp_cart_modalbox_delay');
delete_option('usp_cart_upsell_product_id');
delete_site_option('usp_cart_upsell_product_id');
delete_option('usp_cart_upsell_min_amount');
delete_site_option('usp_cart_upsell_min_amount');
delete_option('usp_cart_upsell_max_amount');
delete_site_option('usp_cart_upsell_max_amount');
delete_option('usp_cart_upsell_product_visibility');
delete_site_option('usp_cart_upsell_product_visibility');
delete_option('usp_cart_upsell_product_forced_qty');
delete_site_option('usp_cart_upsell_product_forced_qty');
delete_option('usp_checkout_modalbox_enabled');
delete_site_option('usp_checkout_modalbox_enabled');
delete_option('usp_checlout_modalbox_heading');
delete_site_option('usp_checlout_modalbox_heading');
delete_option('usp_checkout_modalbox_delay');
delete_site_option('usp_checkout_modalbox_delay');
delete_option('usp_checkout_upsell_product_id');
delete_site_option('usp_checkout_upsell_product_id');
delete_option('usp_checkout_upsell_postcode');
delete_site_option('usp_checkout_upsell_postcode');
delete_option('usp_checkout_upsell_product_visibility');
delete_site_option('usp_checkout_upsell_product_visibility');
delete_option('usp_checkout_upsell_product_forced_qty');
delete_site_option('usp_checkout_upsell_product_forced_qty');
delete_option('usp_upsell_product_rating_enabled');
delete_site_option('usp_upsell_product_rating_enabled');
delete_option('usp_upsell_product_brands_enabled');
delete_site_option('usp_upsell_product_brands_enabled');
delete_option('usp_upsell_product_sku_enabled');
delete_site_option('usp_upsell_product_sku_enabled');
delete_option('usp_upsell_product_availability_enabled');
delete_site_option('usp_upsell_product_availability_enabled');
delete_option('usp_modalbox_header_bg_color');
delete_site_option('usp_modalbox_header_bg_color');
delete_option('usp_modalbox_header_text_color');
delete_site_option('usp_modalbox_header_text_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'usp_modalbox_heading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'usp_modalbox_heading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'usp_modalbox_heading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'usp_modalbox_heading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'usp_modalbox_delay' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'usp_modalbox_delay' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'usp_modalbox_delay' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'usp_modalbox_delay' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'usp_upsell_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'usp_upsell_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'usp_upsell_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'usp_upsell_product_id' ) );

