<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('miga_shopconnect_storefront_token');
delete_site_option('miga_shopconnect_storefront_token');
delete_option('miga_shopconnect_shop_url');
delete_site_option('miga_shopconnect_shop_url');
delete_option('miga_shopconnect_prefetch');
delete_site_option('miga_shopconnect_prefetch');
delete_option('miga_shopconnect_language');
delete_site_option('miga_shopconnect_language');
delete_option('miga_shopconnect_country');
delete_site_option('miga_shopconnect_country');
delete_option('miga_shopconnect_hide_side_card');
delete_site_option('miga_shopconnect_hide_side_card');
delete_option('miga_shopconnect_show_side_card');
delete_site_option('miga_shopconnect_show_side_card');
delete_option('miga_shopconnect_close_accordion');
delete_site_option('miga_shopconnect_close_accordion');
delete_option('miga_shopconnect_show_recommendations');
delete_site_option('miga_shopconnect_show_recommendations');
delete_option('miga_shopconnect_recommendations_meta');
delete_site_option('miga_shopconnect_recommendations_meta');
delete_option('miga_shopconnect_recommendations_meta_len');
delete_site_option('miga_shopconnect_recommendations_meta_len');
delete_option('miga_shopconnect_recommendations_amount');
delete_site_option('miga_shopconnect_recommendations_amount');
delete_option('miga_shopconnect_recommendations_layout');
delete_site_option('miga_shopconnect_recommendations_layout');
delete_option('miga_shopconnect_store_button_text');
delete_site_option('miga_shopconnect_store_button_text');
delete_option('miga_shopconnect_metafields_json');
delete_site_option('miga_shopconnect_metafields_json');
delete_option('miga_shopconnect_storefront_sync');
delete_site_option('miga_shopconnect_storefront_sync');
delete_option('miga_shopconnect_policy_text');
delete_site_option('miga_shopconnect_policy_text');
delete_option('miga_shopconnect_permalink_products');
delete_site_option('miga_shopconnect_permalink_products');
delete_option('miga_shopconnect_permalink_collections');
delete_site_option('miga_shopconnect_permalink_collections');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_shopconnect_%', '_site_transient_shopconnect_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('miga_shopconnect_syncProducts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'layout_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'layout_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'layout_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'layout_type' ) );

