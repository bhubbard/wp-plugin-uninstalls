<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imagineDefaultWidth');
delete_site_option('imagineDefaultWidth');
delete_option('optionImagineThumbnailWidth');
delete_site_option('optionImagineThumbnailWidth');
delete_option('optionImagineThumbnailRatio');
delete_site_option('optionImagineThumbnailRatio');
delete_option('optionImagineDefaultGalleryTemplate');
delete_site_option('optionImagineDefaultGalleryTemplate');
delete_option('optionImagineDefaultAlbumTemplate');
delete_site_option('optionImagineDefaultAlbumTemplate');
delete_option('optionImagineDefaultImageTemplate');
delete_site_option('optionImagineDefaultImageTemplate');
delete_option('optionImagineDefaultLayoverTemplate');
delete_site_option('optionImagineDefaultLayoverTemplate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'imagine' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'imagine' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'imagine' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'imagine' ) );

