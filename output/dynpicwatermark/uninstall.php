<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynpicwatermark_default_position');
delete_site_option('dynpicwatermark_default_position');
delete_option('dynpicwatermark_force_default_position');
delete_site_option('dynpicwatermark_force_default_position');
delete_option('dynpicwatermark_size_type');
delete_site_option('dynpicwatermark_size_type');
delete_option('dynpicwatermark_size_value');
delete_site_option('dynpicwatermark_size_value');
delete_option('dynpicwatermark_watermark_file');
delete_site_option('dynpicwatermark_watermark_file');
delete_option('dynpicwatermark_mark_any_image');
delete_site_option('dynpicwatermark_mark_any_image');
delete_option('dynpicwatermark_memory_limit');
delete_site_option('dynpicwatermark_memory_limit');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

