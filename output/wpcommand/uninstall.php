<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpcac_api_key');
delete_site_option('wpcac_api_key');
delete_option('wpcac_serviceapi_key');
delete_site_option('wpcac_serviceapi_key');
delete_option('WPCAC_plugin_version');
delete_site_option('WPCAC_plugin_version');
delete_option('hmbkp_path');
delete_site_option('hmbkp_path');
delete_option('hmbkp_default_path');
delete_site_option('hmbkp_default_path');
delete_option('hmbkp_plugin_version');
delete_site_option('hmbkp_plugin_version');
delete_option('wpcac_backup_path');
delete_site_option('wpcac_backup_path');
delete_option('wpcac_no_htaccess');
delete_site_option('wpcac_no_htaccess');
delete_option('dismissed-plugins');
delete_site_option('dismissed-plugins');
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('update_themes');
delete_site_option('update_themes');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

