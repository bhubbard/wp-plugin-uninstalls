<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('magelon_export_interval');
delete_site_option('magelon_export_interval');
delete_option('magelon_id_option');
delete_site_option('magelon_id_option');
delete_option('magelon_description_option');
delete_site_option('magelon_description_option');
delete_option('magelon_mpn_option');
delete_site_option('magelon_mpn_option');
delete_option('magelon_field_mapping');
delete_site_option('magelon_field_mapping');

// Delete Transients
delete_transient('magelon_export_admin_notice');
delete_site_transient('magelon_export_admin_notice');
delete_transient('magelon_total_products');
delete_site_transient('magelon_total_products');

// Clear Cron Jobs
wp_clear_scheduled_hook('magelon_export_scheduled_event');
wp_clear_scheduled_hook('magelon_export_event_checker');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );

