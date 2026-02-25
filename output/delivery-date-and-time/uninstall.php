<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_ddt_start_time');
delete_site_option('wc_settings_ddt_start_time');
delete_option('wc_settings_ddt_end_time');
delete_site_option('wc_settings_ddt_end_time');
delete_option('wc_settings_ddt_interval');
delete_site_option('wc_settings_ddt_interval');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'order_delivery_date_and_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'order_delivery_date_and_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'order_delivery_date_and_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'order_delivery_date_and_time' ) );

