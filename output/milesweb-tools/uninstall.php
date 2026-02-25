<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('milesweb_maintenance_mode_enabled');
delete_site_option('milesweb_maintenance_mode_enabled');
delete_option('milesweb_force_https_redirect');
delete_site_option('milesweb_force_https_redirect');
delete_option('milesweb_file_editing_disabled');
delete_site_option('milesweb_file_editing_disabled');
delete_option('milesweb_disable_xmlrpc');
delete_site_option('milesweb_disable_xmlrpc');
delete_option('mw_force_footer_enabled');
delete_site_option('mw_force_footer_enabled');
delete_option('force_https_redirect');
delete_site_option('force_https_redirect');
delete_option('maintenance_mode_enabled');
delete_site_option('maintenance_mode_enabled');
delete_option('milesweb_logo_image_id');
delete_site_option('milesweb_logo_image_id');
delete_option('milesweb_coming_soon_image_id');
delete_site_option('milesweb_coming_soon_image_id');
delete_option('file_editing_disabled');
delete_site_option('file_editing_disabled');
delete_option('disable_xmlrpc');
delete_site_option('disable_xmlrpc');
delete_option('milesweb_plugin_installed');
delete_site_option('milesweb_plugin_installed');

// Delete Transients
delete_transient('rest_api_init');
delete_site_transient('rest_api_init');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login' ) );

