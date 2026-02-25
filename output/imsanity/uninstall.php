<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imsanity_resume_id');
delete_site_option('imsanity_resume_id');
delete_option('imsanity_version');
delete_site_option('imsanity_version');
delete_option('imsanity_max_width');
delete_site_option('imsanity_max_width');
delete_option('imsanity_max_height');
delete_site_option('imsanity_max_height');
delete_option('imsanity_max_width_library');
delete_site_option('imsanity_max_width_library');
delete_option('imsanity_max_height_library');
delete_site_option('imsanity_max_height_library');
delete_option('imsanity_max_width_other');
delete_site_option('imsanity_max_width_other');
delete_option('imsanity_max_height_other');
delete_site_option('imsanity_max_height_other');
delete_option('imsanity_bmp_to_jpg');
delete_site_option('imsanity_bmp_to_jpg');
delete_option('imsanity_png_to_jpg');
delete_site_option('imsanity_png_to_jpg');
delete_option('imsanity_quality');
delete_site_option('imsanity_quality');
delete_option('imsanity_avif_quality');
delete_site_option('imsanity_avif_quality');
delete_option('imsanity_webp_quality');
delete_site_option('imsanity_webp_quality');
delete_option('imsanity_delete_originals');
delete_site_option('imsanity_delete_originals');

// Delete Transients
delete_transient('dirsize_cache');
delete_site_transient('dirsize_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

