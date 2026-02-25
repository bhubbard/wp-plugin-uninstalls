<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailplus_shipmate_api_url');
delete_site_option('mailplus_shipmate_api_url');
delete_option('mailplus_shipmate_api_key');
delete_site_option('mailplus_shipmate_api_key');
delete_option('mailplus_shipmate_api_token');
delete_site_option('mailplus_shipmate_api_token');
delete_option('mailplus_shipmate_shop_token');
delete_site_option('mailplus_shipmate_shop_token');
delete_option('mailplus_shipmate_integration_complete');
delete_site_option('mailplus_shipmate_integration_complete');
delete_option('mailplus_shipmate_woo_activation_token');
delete_site_option('mailplus_shipmate_woo_activation_token');
delete_option('mailplus_shipmate_front_url');
delete_site_option('mailplus_shipmate_front_url');
delete_option('shipmate_woo_activation_token');
delete_site_option('shipmate_woo_activation_token');
delete_option('shipmate_shop_token');
delete_site_option('shipmate_shop_token');
delete_option('shipmate_api_url');
delete_site_option('shipmate_api_url');
delete_option('mailplus_shipmate_plugin_version');
delete_site_option('mailplus_shipmate_plugin_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mailplus_remote_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mailplus_remote_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mailplus_remote_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mailplus_remote_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mailplus_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mailplus_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mailplus_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mailplus_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mailplus_carrier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mailplus_carrier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mailplus_carrier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mailplus_carrier' ) );

