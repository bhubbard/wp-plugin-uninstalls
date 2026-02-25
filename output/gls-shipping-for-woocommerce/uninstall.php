<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_gls_shipping_method_settings');
delete_site_option('woocommerce_gls_shipping_method_settings');
delete_option('woocommerce_gls_shipping_method_parcel_shop_settings');
delete_site_option('woocommerce_gls_shipping_method_parcel_shop_settings');
delete_option('woocommerce_gls_shipping_method_parcel_locker_settings');
delete_site_option('woocommerce_gls_shipping_method_parcel_locker_settings');
delete_option('woocommerce_gls_shipping_method_parcel_shop_zones_settings');
delete_site_option('woocommerce_gls_shipping_method_parcel_shop_zones_settings');
delete_option('woocommerce_gls_shipping_method_parcel_locker_zones_settings');
delete_site_option('woocommerce_gls_shipping_method_parcel_locker_zones_settings');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gls_restrict_parcel_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gls_restrict_parcel_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gls_restrict_parcel_shipping' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gls_restrict_parcel_shipping' ) );

