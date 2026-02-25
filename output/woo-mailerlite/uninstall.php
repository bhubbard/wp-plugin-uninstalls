<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woo_ml_key');
delete_site_option('woo_ml_key');
delete_option('woo_ml_wizard_setup');
delete_site_option('woo_ml_wizard_setup');
delete_option('woocommerce_mailerlite_settings');
delete_site_option('woocommerce_mailerlite_settings');
delete_option('woo_ml_account_name');
delete_site_option('woo_ml_account_name');
delete_option('account_id');
delete_site_option('account_id');
delete_option('account_subdomain');
delete_site_option('account_subdomain');
delete_option('woo_ml_shop_id');
delete_site_option('woo_ml_shop_id');
delete_option('woo_ml_last_synced_guest_id');
delete_site_option('woo_ml_last_synced_guest_id');
delete_option('woo_mailerlite');
delete_site_option('woo_mailerlite');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');

// Delete Transients
delete_transient('mailerlite_custom_fields');
delete_site_transient('mailerlite_custom_fields');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_ml_product_ignored' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_ml_product_ignored' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_ml_product_ignored' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_ml_product_ignored' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_ml_product_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_ml_product_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_ml_product_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_ml_product_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_ml_category_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_ml_category_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_ml_category_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_ml_category_tracked' ) );

