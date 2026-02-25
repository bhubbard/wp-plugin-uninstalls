<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('socialgl_logo_id');
delete_site_option('socialgl_logo_id');
delete_option('socialgl_cover_image_id');
delete_site_option('socialgl_cover_image_id');
delete_option('socialgl_description');
delete_site_option('socialgl_description');
delete_option('socialgl_items_per_page');
delete_site_option('socialgl_items_per_page');
delete_option('socialgl_mode');
delete_site_option('socialgl_mode');
delete_option('socialgl_responsive');
delete_site_option('socialgl_responsive');
delete_option('socialgl_seo_title');
delete_site_option('socialgl_seo_title');
delete_option('socialgl_seo_description');
delete_site_option('socialgl_seo_description');
delete_option('socialgl_social_links');
delete_site_option('socialgl_social_links');
delete_option('socialgl_social_icons');
delete_site_option('socialgl_social_icons');
delete_option('socialgl_dark_logo_id');
delete_site_option('socialgl_dark_logo_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'square_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'square_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'square_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'square_image_id' ) );

