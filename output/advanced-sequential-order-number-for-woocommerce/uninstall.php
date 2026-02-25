<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_order_number_enable_plugin');
delete_site_option('wc_settings_order_number_enable_plugin');
delete_option('wc_settings_order_number_order_prefix');
delete_site_option('wc_settings_order_number_order_prefix');
delete_option('wc_settings_order_number_order_suffix');
delete_site_option('wc_settings_order_number_order_suffix');
delete_option('wc_settings_order_number_counter');
delete_site_option('wc_settings_order_number_counter');
delete_option('wc_settings_order_number_order_format');
delete_site_option('wc_settings_order_number_order_format');
delete_option('wc_settings_order_number_width');
delete_site_option('wc_settings_order_number_width');
delete_option('wc_settings_order_number_start_order_number');
delete_site_option('wc_settings_order_number_start_order_number');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'new_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'new_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'new_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'new_order_id' ) );

