<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('wc_rlc_api_key_prod');
delete_site_option('wc_rlc_api_key_prod');
delete_option('wc_rlc_freight_weight_threshold');
delete_site_option('wc_rlc_freight_weight_threshold');
delete_option('wc_rlc_environment');
delete_site_option('wc_rlc_environment');
delete_option('wc_rlc_sandbox_mode');
delete_site_option('wc_rlc_sandbox_mode');
delete_option('wc_rlc_pallet_limit');
delete_site_option('wc_rlc_pallet_limit');
delete_option('wc_rlc_override_destination_accessorials');
delete_site_option('wc_rlc_override_destination_accessorials');
delete_option('wc_rlc_override_limited_delivery');
delete_site_option('wc_rlc_override_limited_delivery');
delete_option('wc_rlc_override_inside_delivery');
delete_site_option('wc_rlc_override_inside_delivery');
delete_option('wc_rlc_override_destination_liftgate');
delete_site_option('wc_rlc_override_destination_liftgate');
delete_option('wc_rlc_override_delivery_notification');
delete_site_option('wc_rlc_override_delivery_notification');
delete_option('wc_rlc_special_shipping_services');
delete_site_option('wc_rlc_special_shipping_services');
delete_option('wc_rlc_must_ship_freight');
delete_site_option('wc_rlc_must_ship_freight');
delete_option('wc_rlc_split_packaging');
delete_site_option('wc_rlc_split_packaging');
delete_option('wc_rlc_debug_mode');
delete_site_option('wc_rlc_debug_mode');
delete_option('wc_rlc_itemized_rates');
delete_site_option('wc_rlc_itemized_rates');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('wc_rlc_show_delivery_notification');
delete_site_option('wc_rlc_show_delivery_notification');
delete_option('wc_rlc_show_limited_delivery');
delete_site_option('wc_rlc_show_limited_delivery');
delete_option('wc_rlc_show_inside_delivery');
delete_site_option('wc_rlc_show_inside_delivery');
delete_option('wc_rlc_show_destination_liftgate');
delete_site_option('wc_rlc_show_destination_liftgate');
delete_option('wc_rlc_packing_method');
delete_site_option('wc_rlc_packing_method');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rlc_%', '_site_transient_rlc_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_force_freight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_force_freight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_force_freight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_force_freight' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_hazmat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_hazmat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_hazmat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_hazmat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipping_postcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipping_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipping_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipping_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipping_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipping_state' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipping_state' ) );

