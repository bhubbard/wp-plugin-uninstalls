<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('single_exchange_timestamp');
delete_site_option('single_exchange_timestamp');
delete_option('single_euro_btc');
delete_site_option('single_euro_btc');

// Clear Cron Jobs
wp_clear_scheduled_hook('secpay_update_order_status');
wp_clear_scheduled_hook('secpay_update_exchange_rate');
wp_clear_scheduled_hook('secpay_check_order_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'secpaycheckoutflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'secpaycheckoutflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'secpaycheckoutflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'secpaycheckoutflow' ) );

