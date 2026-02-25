<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basiimco_webp_quality');
delete_site_option('basiimco_webp_quality');
delete_option('basiimco_avif_quality');
delete_site_option('basiimco_avif_quality');
delete_option('basiimco_enable_webp');
delete_site_option('basiimco_enable_webp');
delete_option('basiimco_enable_avif');
delete_site_option('basiimco_enable_avif');
delete_option('basiimco_plugin_version');
delete_site_option('basiimco_plugin_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('basiimco_cleanup_task');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basiimco_optimized_format' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basiimco_optimized_format' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basiimco_optimized_format' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basiimco_optimized_format' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basiimco_original_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basiimco_original_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basiimco_original_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basiimco_original_size' ) );

