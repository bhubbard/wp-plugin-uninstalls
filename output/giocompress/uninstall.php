<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('giocompress_format');
delete_site_option('giocompress_format');
delete_option('giocompress_quality');
delete_site_option('giocompress_quality');
delete_option('giocompress_max_width');
delete_site_option('giocompress_max_width');
delete_option('giocompress_preserve_original');
delete_site_option('giocompress_preserve_original');
delete_option('giocompress_lazy_loading');
delete_site_option('giocompress_lazy_loading');
delete_option('giocompress_auto_alt_text');
delete_site_option('giocompress_auto_alt_text');
delete_option('giocompress_api_key');
delete_site_option('giocompress_api_key');
delete_option('giocompress_daily_limit');
delete_site_option('giocompress_daily_limit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

