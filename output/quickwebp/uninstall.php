<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickwebp_bulk_optimize_status');
delete_site_option('quickwebp_bulk_optimize_status');
delete_option('quickwebp_bulk_optimize_total');
delete_site_option('quickwebp_bulk_optimize_total');
delete_option('quickwebp_bulk_optimize_current');
delete_site_option('quickwebp_bulk_optimize_current');
delete_option('quickwebp_settings_conversion');
delete_site_option('quickwebp_settings_conversion');
delete_option('quickwebp_settings_conversion_quality');
delete_site_option('quickwebp_settings_conversion_quality');
delete_option('quickwebp_settings_conversion_sharpen');
delete_site_option('quickwebp_settings_conversion_sharpen');
delete_option('quickwebp_settings_conversion_ignore_webp');
delete_site_option('quickwebp_settings_conversion_ignore_webp');
delete_option('quickwebp_settings_conversion_save_original');
delete_site_option('quickwebp_settings_conversion_save_original');
delete_option('quickwebp_settings_resize');
delete_site_option('quickwebp_settings_resize');
delete_option('quickwebp_settings_resize_value');
delete_site_option('quickwebp_settings_resize_value');
delete_option('quickwebp_settings_completion');
delete_site_option('quickwebp_settings_completion');
delete_option('quickwebp_settings_completion_options');
delete_site_option('quickwebp_settings_completion_options');
delete_option('quickwebp_settings_cleanup');
delete_site_option('quickwebp_settings_cleanup');
delete_option('quickwebp_settings_library');
delete_site_option('quickwebp_settings_library');
delete_option('quickwebp_settings_conversion_display_webp_mode');
delete_site_option('quickwebp_settings_conversion_display_webp_mode');
delete_option('quickwebp_settings_paste_image');
delete_site_option('quickwebp_settings_paste_image');

// Clear Cron Jobs
wp_clear_scheduled_hook('quickwebp_bulk_optimization_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quickwebp_already_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quickwebp_already_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quickwebp_already_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quickwebp_already_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quickwebp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quickwebp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quickwebp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quickwebp_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quickwebp_has_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quickwebp_has_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quickwebp_has_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quickwebp_has_error' ) );

