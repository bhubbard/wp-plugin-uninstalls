<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lergs_image_label');
delete_site_option('lergs_image_label');
delete_option('lergs_hover_animation');
delete_site_option('lergs_hover_animation');
delete_option('lergs_layout_type');
delete_site_option('lergs_layout_type');
delete_option('lergs_thumbnail_layout');
delete_site_option('lergs_thumbnail_layout');
delete_option('lergs_hover_color');
delete_site_option('lergs_hover_color');
delete_option('lergs_hover_text_color');
delete_site_option('lergs_hover_text_color');
delete_option('lergs_gallry_custom_css');
delete_site_option('lergs_gallry_custom_css');
delete_option('lergs_slider_play');
delete_site_option('lergs_slider_play');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lergs_all_photos_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lergs_all_photos_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lergs_all_photos_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lergs_all_photos_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lergs_total_images_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lergs_total_images_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lergs_total_images_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lergs_total_images_count' ) );

