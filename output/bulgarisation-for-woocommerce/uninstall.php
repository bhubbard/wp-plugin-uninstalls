<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_bg_boxnow_message_dismiss');
delete_site_option('woo_bg_boxnow_message_dismiss');
delete_option('woocommerce_bacs_accounts');
delete_site_option('woocommerce_bacs_accounts');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_enable_shipping_calc');
delete_site_option('woocommerce_enable_shipping_calc');

// Clear Cron Jobs
wp_clear_scheduled_hook('woo_bg/boxnow/clear_cache_folder');
wp_clear_scheduled_hook('woo_bg/cvc/clear_cache_folder');
wp_clear_scheduled_hook('woo_bg/econt/clear_cache_folder');
wp_clear_scheduled_hook('woo_bg/speedy/clear_cache_folder');
wp_clear_scheduled_hook('woo_bg/submit_stats');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_vat_number' ) );

