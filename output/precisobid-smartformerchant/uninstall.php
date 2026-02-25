<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('update_xml_and_json_at');
delete_site_option('update_xml_and_json_at');
delete_option('preciso_login_username');
delete_site_option('preciso_login_username');
delete_option('preciso_login_password');
delete_site_option('preciso_login_password');
delete_option('preciso_plugin_set');
delete_site_option('preciso_plugin_set');
delete_option('termstatus');
delete_site_option('termstatus');
delete_option('preciso_token');
delete_site_option('preciso_token');
delete_option('preciso_campaignId');
delete_site_option('preciso_campaignId');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );

