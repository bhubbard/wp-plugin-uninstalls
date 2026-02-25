<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_ua_options');
delete_site_option('woo_ua_options');
delete_option('wau_addon_settings');
delete_site_option('wau_addon_settings');
delete_option('wua_addon_settings');
delete_site_option('wua_addon_settings');
delete_option('woo_ua_my_plugin_notice_shown');
delete_site_option('woo_ua_my_plugin_notice_shown');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woo_ua_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woo_ua_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woo_ua_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woo_ua_field' ) );

