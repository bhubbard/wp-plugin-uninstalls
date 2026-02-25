<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('firexcore_webp_quality');
delete_site_option('firexcore_webp_quality');
delete_option('firexcore_webp_replace_original');
delete_site_option('firexcore_webp_replace_original');
delete_option('firexcore_webp_strip_metadata');
delete_site_option('firexcore_webp_strip_metadata');
delete_option('firexcore_webp_lossless');
delete_site_option('firexcore_webp_lossless');
delete_option('firexcore_webp_lazy_loading');
delete_site_option('firexcore_webp_lazy_loading');
delete_option('firexcore_webp_seo_optimization');
delete_site_option('firexcore_webp_seo_optimization');

// Clear Cron Jobs
wp_clear_scheduled_hook('firexcore_webp_cleanup_temp');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

