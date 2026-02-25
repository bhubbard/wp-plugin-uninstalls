<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('posten-bring-checkout-dark-mode');
delete_site_option('posten-bring-checkout-dark-mode');
delete_option('woocommerce_vipps_settings');
delete_site_option('woocommerce_vipps_settings');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('posten-bring-checkout-deactivation-reason');
delete_site_option('posten-bring-checkout-deactivation-reason');
delete_option('posten-bring-checkout-deactivation-feedback');
delete_site_option('posten-bring-checkout-deactivation-feedback');
delete_option('posten-bring-checkout-remote-log');
delete_site_option('posten-bring-checkout-remote-log');
delete_option('wooexpress_navigation_enabled');
delete_site_option('wooexpress_navigation_enabled');
delete_option('posten-bring-checkout-apikey');
delete_site_option('posten-bring-checkout-apikey');
delete_option('posten-bring-checkout-webshopId');
delete_site_option('posten-bring-checkout-webshopId');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_address_autocomplete_enabled');
delete_site_option('woocommerce_address_autocomplete_enabled');
delete_option('woocommerce_specific_allowed_countries');
delete_site_option('woocommerce_specific_allowed_countries');
delete_option('woocommerce_dintero_checkout_settings');
delete_site_option('woocommerce_dintero_checkout_settings');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_posten_bring_checkout_too_large_for_parcel_locker' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_posten_bring_checkout_too_large_for_parcel_locker' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_posten_bring_checkout_too_large_for_parcel_locker' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_posten_bring_checkout_too_large_for_parcel_locker' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_posten_bring_checkout_too_large_for_mailbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_posten_bring_checkout_too_large_for_mailbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_posten_bring_checkout_too_large_for_mailbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_posten_bring_checkout_too_large_for_mailbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_posten_bring_checkout_disable_all' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_posten_bring_checkout_disable_all' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_posten_bring_checkout_disable_all' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_posten_bring_checkout_disable_all' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'posten_bring_checkout_dismissed_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'posten_bring_checkout_dismissed_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'posten_bring_checkout_dismissed_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'posten_bring_checkout_dismissed_notifications' ) );

