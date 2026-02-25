<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_colorlab_shop_id');
delete_site_option('woocommerce_colorlab_shop_id');
delete_option('woocommerce_colorlab_api_key');
delete_site_option('woocommerce_colorlab_api_key');
delete_option('woocommerce_colorlab_secret_key');
delete_site_option('woocommerce_colorlab_secret_key');
delete_option('woocommerce_colorlab_customization_text');
delete_site_option('woocommerce_colorlab_customization_text');
delete_option('woocommerce_colorlab_add_to_cart_button');
delete_site_option('woocommerce_colorlab_add_to_cart_button');
delete_option('woocommerce_printlane_button_selector');
delete_site_option('woocommerce_printlane_button_selector');
delete_option('woocommerce_colorlab_cart_thumbnails');
delete_site_option('woocommerce_colorlab_cart_thumbnails');
delete_option('woocommerce_colorlab_hide_reference');
delete_site_option('woocommerce_colorlab_hide_reference');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_enable_colorlab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_enable_colorlab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_enable_colorlab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_enable_colorlab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_colorlab_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_colorlab_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_colorlab_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_colorlab_product' ) );

