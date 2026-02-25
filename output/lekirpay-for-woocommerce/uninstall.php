<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_lekirpay_settings');
delete_site_option('woocommerce_lekirpay_settings');
delete_option('lekirpay_fpx_banks');
delete_site_option('lekirpay_fpx_banks');
delete_option('lekirpay_fpx_banks_last');
delete_site_option('lekirpay_fpx_banks_last');

// Clear Cron Jobs
wp_clear_scheduled_hook('lekirpay_bills_invalidator');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_transaction_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_transaction_id' ) );

