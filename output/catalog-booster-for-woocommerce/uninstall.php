<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ic_woocat');
delete_site_option('ic_woocat');
delete_option('IC_WOOCAT_activation_message_done');
delete_site_option('IC_WOOCAT_activation_message_done');
delete_option('ic_cat_recommended_extensions');
delete_site_option('ic_cat_recommended_extensions');
delete_option('ic_hidden_notices');
delete_site_option('ic_hidden_notices');
delete_option('implecode_wp_tooltips');
delete_site_option('implecode_wp_tooltips');
delete_option('implecode_wp_hidden_tooltips');
delete_site_option('implecode_wp_hidden_tooltips');
delete_option('IC_EPC_activation_message');
delete_site_option('IC_EPC_activation_message');
delete_option('IC_EPC_activation_message_done');
delete_site_option('IC_EPC_activation_message_done');
delete_option('ic_cat_wizard_woo_choice');
delete_site_option('ic_cat_wizard_woo_choice');
delete_option('ic_enable_page_for_woo');
delete_site_option('ic_enable_page_for_woo');
delete_option('ic_enable_listing_for_woo');
delete_site_option('ic_enable_listing_for_woo');
delete_option('product_archive_page_id');
delete_site_option('product_archive_page_id');
delete_option('product_archive');
delete_site_option('product_archive');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('ic_woocat_woo_gallery');
delete_site_option('ic_woocat_woo_gallery');

// Delete Transients
delete_transient('implecode_extensions_data');
delete_site_transient('implecode_extensions_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ic_woocat_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ic_woocat_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ic_woocat_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ic_woocat_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );

