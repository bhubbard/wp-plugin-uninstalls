<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('proler_role_table');
delete_site_option('proler_role_table');
delete_option('proler_rating');
delete_site_option('proler_rating');
delete_option('proler_notify_pro');
delete_site_option('proler_notify_pro');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');

// Delete Transients
delete_transient('proler_admin_cache');
delete_site_transient('proler_admin_cache');
delete_transient('proler_settings');
delete_site_transient('proler_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'proler_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'proler_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'proler_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'proler_data' ) );

