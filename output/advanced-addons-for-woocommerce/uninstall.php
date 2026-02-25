<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_addons_globally');
delete_site_option('enable_addons_globally');
delete_option('default_addon_state');
delete_site_option('default_addon_state');
delete_option('require_addon_selection');
delete_site_option('require_addon_selection');
delete_option('enable_addon_tax');
delete_site_option('enable_addon_tax');
delete_option('addon_tax_class');
delete_site_option('addon_tax_class');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_addons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_addons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_addons' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_addons' ) );

