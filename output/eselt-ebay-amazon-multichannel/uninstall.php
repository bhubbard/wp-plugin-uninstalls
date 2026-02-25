<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eselt_api_keys');
delete_site_option('eselt_api_keys');
delete_option('eselt_inventory_movements_db_version');
delete_site_option('eselt_inventory_movements_db_version');

// Delete Transients
delete_transient('eselt_admin_notice_error');
delete_site_transient('eselt_admin_notice_error');
delete_transient('eselt_admin_notice_success');
delete_site_transient('eselt_admin_notice_success');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stock' ) );

