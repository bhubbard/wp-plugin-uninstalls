<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asd_wpsorter_version');
delete_site_option('asd_wpsorter_version');
delete_option('asd_wpsorter_settings');
delete_site_option('asd_wpsorter_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('asd_wpsorter_cleanup_orphaned_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'asd_wpsorter_product_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'asd_wpsorter_product_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'asd_wpsorter_product_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'asd_wpsorter_product_order' ) );

