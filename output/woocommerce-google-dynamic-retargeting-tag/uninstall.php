<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgdr_plugin_options_1');
delete_site_option('wgdr_plugin_options_1');
delete_option('wgdr_plugin_options_2');
delete_site_option('wgdr_plugin_options_2');
delete_option('wgdr_plugin_options_3');
delete_site_option('wgdr_plugin_options_3');
delete_option('wgdr_hide_deprecation_info');
delete_site_option('wgdr_hide_deprecation_info');
delete_option('wgdr_plugin_options');
delete_site_option('wgdr_plugin_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wgdr_admin_notice_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wgdr_admin_notice_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wgdr_admin_notice_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wgdr_admin_notice_user_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_WGDR_conversion_pixel_fired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_WGDR_conversion_pixel_fired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_WGDR_conversion_pixel_fired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_WGDR_conversion_pixel_fired' ) );

