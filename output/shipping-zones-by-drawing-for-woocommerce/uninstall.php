<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('SZbD_settings_test');
delete_site_option('SZbD_settings_test');
delete_option('szbd_google_api_key');
delete_site_option('szbd_google_api_key');
delete_option('szbd_deactivate_google');
delete_site_option('szbd_deactivate_google');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('szbd_store_address_mode');
delete_site_option('szbd_store_address_mode');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('szbd_log_server_requests');
delete_site_option('szbd_log_server_requests');
delete_option('szbd_debug');
delete_site_option('szbd_debug');
delete_option('szbd_google_api_key_2');
delete_site_option('szbd_google_api_key_2');
delete_option('fdoe_disable_checkout_validation');
delete_site_option('fdoe_disable_checkout_validation');
delete_option('fdoe_enable_delivery_switcher');
delete_site_option('fdoe_enable_delivery_switcher');
delete_option('szbd_server_mode');
delete_site_option('szbd_server_mode');
delete_option('szbd_precise_address');
delete_site_option('szbd_precise_address');
delete_option('szbd_types_custom');
delete_site_option('szbd_types_custom');
delete_option('szbd_no_map_types');
delete_site_option('szbd_no_map_types');
delete_option('szbd_deactivate_postcode');
delete_site_option('szbd_deactivate_postcode');
delete_option('szbd_map_placement');
delete_site_option('szbd_map_placement');
delete_option('szbd_enable_at_cart');
delete_site_option('szbd_enable_at_cart');
delete_option('szbd_force_shortcode');
delete_site_option('szbd_force_shortcode');
delete_option('fdoe_skip_address_validation');
delete_site_option('fdoe_skip_address_validation');
delete_option('szbd_select_top_method');
delete_site_option('szbd_select_top_method');
delete_option('szbd_result_types');
delete_site_option('szbd_result_types');
delete_option('szbd_monitor');
delete_site_option('szbd_monitor');
delete_option('szbd_precise_address_mandatory');
delete_site_option('szbd_precise_address_mandatory');
delete_option('szbd_precise_address_plus_code');
delete_site_option('szbd_precise_address_plus_code');
delete_option('szbd_hide_shipping_cart');
delete_site_option('szbd_hide_shipping_cart');
delete_option('szbd_exclude_shipping_methods');
delete_site_option('szbd_exclude_shipping_methods');
delete_option('szbd_servermode_message');
delete_site_option('szbd_servermode_message');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'szbdzones_metakey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'szbdzones_metakey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'szbdzones_metakey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'szbdzones_metakey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'szbdorigins_metakey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'szbdorigins_metakey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'szbdorigins_metakey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'szbdorigins_metakey' ) );

