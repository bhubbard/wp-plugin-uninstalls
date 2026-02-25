<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buying_buddy_settings');
delete_site_option('buying_buddy_settings');
delete_option('buying_buddy_activation_redirect');
delete_site_option('buying_buddy_activation_redirect');
delete_option('buying_buddy_foundation_pages');
delete_site_option('buying_buddy_foundation_pages');
delete_option('buyingbuddy_version');
delete_site_option('buyingbuddy_version');
delete_option('buyingbuddy_options');
delete_site_option('buyingbuddy_options');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('buying_buddy_update_check');
delete_site_transient('buying_buddy_update_check');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('buying_buddy_property_cache');
delete_site_transient('buying_buddy_property_cache');
delete_transient('buying_buddy_repository_info');
delete_site_transient('buying_buddy_repository_info');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

