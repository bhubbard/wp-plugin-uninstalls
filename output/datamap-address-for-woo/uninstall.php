<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dmaw_datamap_address_woo_api_password');
delete_site_option('dmaw_datamap_address_woo_api_password');
delete_option('dmaw_datamap_address_woo_url');
delete_site_option('dmaw_datamap_address_woo_url');
delete_option('dmaw_datamap_address_woo_api_username');
delete_site_option('dmaw_datamap_address_woo_api_username');
delete_option('dmaw_datamap_access_token');
delete_site_option('dmaw_datamap_access_token');
delete_option('dmaw_datamap_access_token_expiry');
delete_site_option('dmaw_datamap_access_token_expiry');
delete_option('dmaw_datamap_refresh_token');
delete_site_option('dmaw_datamap_refresh_token');
delete_option('dmaw_datamap_refresh_token_expiry');
delete_site_option('dmaw_datamap_refresh_token_expiry');
delete_option('dmaw_datamap_address_woo_shipping_country');
delete_site_option('dmaw_datamap_address_woo_shipping_country');
delete_option('dmaw_datamap_address_woo_shipping_address');
delete_site_option('dmaw_datamap_address_woo_shipping_address');
delete_option('dmaw_datamap_address_woo_shipping_city');
delete_site_option('dmaw_datamap_address_woo_shipping_city');
delete_option('dmaw_datamap_address_woo_shipping_postcode');
delete_site_option('dmaw_datamap_address_woo_shipping_postcode');
delete_option('dmaw_datamap_address_woo_shipping_state');
delete_site_option('dmaw_datamap_address_woo_shipping_state');
delete_option('dmaw_datamap_address_woo_billing_address');
delete_site_option('dmaw_datamap_address_woo_billing_address');
delete_option('dmaw_datamap_address_woo_billing_city');
delete_site_option('dmaw_datamap_address_woo_billing_city');
delete_option('dmaw_datamap_address_woo_billing_postcode');
delete_site_option('dmaw_datamap_address_woo_billing_postcode');
delete_option('dmaw_datamap_address_woo_billing_state');
delete_site_option('dmaw_datamap_address_woo_billing_state');
delete_option('dmaw_datamap_address_woo_api_key');
delete_site_option('dmaw_datamap_address_woo_api_key');
delete_option('dmaw_datamap_address_woo_enable_extension');
delete_site_option('dmaw_datamap_address_woo_enable_extension');
delete_option('dmaw_datamap_address_woo_country_list');
delete_site_option('dmaw_datamap_address_woo_country_list');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_billing/dmaw_datamap_address_woo/dcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_billing/dmaw_datamap_address_woo/dcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_billing/dmaw_datamap_address_woo/dcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_billing/dmaw_datamap_address_woo/dcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_shipping/dmaw_datamap_address_woo/dcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_shipping/dmaw_datamap_address_woo/dcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_shipping/dmaw_datamap_address_woo/dcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_shipping/dmaw_datamap_address_woo/dcode' ) );

