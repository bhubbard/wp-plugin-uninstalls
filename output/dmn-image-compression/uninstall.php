<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dmnic_enable_debug_log');
delete_site_option('dmnic_enable_debug_log');
delete_option('dmnic_enable_cron');
delete_site_option('dmnic_enable_cron');
delete_option('dmnic_max_width');
delete_site_option('dmnic_max_width');
delete_option('dmnic_min_size_kb');
delete_site_option('dmnic_min_size_kb');
delete_option('dmnic_enable_aggressive_compression');
delete_site_option('dmnic_enable_aggressive_compression');
delete_option('dmnic_quality');
delete_site_option('dmnic_quality');

// Delete Transients
delete_transient('dmnic_image_compression_counts');
delete_site_transient('dmnic_image_compression_counts');

// Clear Cron Jobs
wp_clear_scheduled_hook('dmnic_cron_compress_images');
wp_clear_scheduled_hook('dmnic_cleanup_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dmnic_image_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dmnic_image_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dmnic_image_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dmnic_image_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

