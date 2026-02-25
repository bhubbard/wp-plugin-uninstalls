<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('watermark_manager_options');
delete_site_option('watermark_manager_options');
delete_option('watermark_manager_image_watermark_options');
delete_site_option('watermark_manager_image_watermark_options');
delete_option('watermark_manager_image_settings');
delete_site_option('watermark_manager_image_settings');
delete_option('watermark_manager_logging_enabled');
delete_site_option('watermark_manager_logging_enabled');
delete_option('WATERMARK_MANAGER_VERSION');
delete_site_option('WATERMARK_MANAGER_VERSION');
delete_option('watermark_manager_content_watermark_options');
delete_site_option('watermark_manager_content_watermark_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('watermark_manager_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_watermark_manager_watermarked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_watermark_manager_watermarked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_watermark_manager_watermarked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_watermark_manager_watermarked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );

