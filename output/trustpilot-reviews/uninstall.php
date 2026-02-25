<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustpilot_settings');
delete_site_option('trustpilot_settings');
delete_option('trustpilot_page_urls');
delete_site_option('trustpilot_page_urls');
delete_option('trustpilot_custom_TrustBoxes');
delete_site_option('trustpilot_custom_TrustBoxes');
delete_option('show_past_orders_initial');
delete_site_option('show_past_orders_initial');
delete_option('sync_in_progress');
delete_site_option('sync_in_progress');
delete_option('past_orders');
delete_site_option('past_orders');
delete_option('failed_orders');
delete_site_option('failed_orders');
delete_option('trustpilot_just_installed');
delete_site_option('trustpilot_just_installed');
delete_option('trustpilot_past_orders');
delete_site_option('trustpilot_past_orders');
delete_option('trustpilot_failed_orders');
delete_site_option('trustpilot_failed_orders');
delete_option('trustpilot_plugin_status');
delete_site_option('trustpilot_plugin_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_email' ) );

