<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voucherify_app_id');
delete_site_option('voucherify_app_id');
delete_option('voucherify_app_secret_key');
delete_site_option('voucherify_app_secret_key');
delete_option('voucherify_enabled');
delete_site_option('voucherify_enabled');
delete_option('voucherify_rollback_enabled');
delete_site_option('voucherify_rollback_enabled');
delete_option('voucherify_lock_ttl');
delete_site_option('voucherify_lock_ttl');
delete_option('voucherify_lock_ttl_unit');
delete_site_option('voucherify_lock_ttl_unit');
delete_option('voucherify_wc_subs_apply_on_renewals');
delete_site_option('voucherify_wc_subs_apply_on_renewals');
delete_option('woocommerce_shipping_tax_class');
delete_site_option('woocommerce_shipping_tax_class');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('voucherify_api_endpoint');
delete_site_option('voucherify_api_endpoint');
delete_option('vcrf_resynchronize');
delete_site_option('vcrf_resynchronize');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_update' ) );

