<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alobaidi_gallery_home');
delete_site_option('alobaidi_gallery_home');
delete_option('alobaidi_gallery_page');
delete_site_option('alobaidi_gallery_page');
delete_option('alobaidi_gallery_count');
delete_site_option('alobaidi_gallery_count');
delete_option('alobaidi_gallery_filter');
delete_site_option('alobaidi_gallery_filter');
delete_option('alobaidi_gallery_sitename');
delete_site_option('alobaidi_gallery_sitename');
delete_option('alobaidi_gallery_tagline');
delete_site_option('alobaidi_gallery_tagline');
delete_option('alobaidi_gallery_facebook');
delete_site_option('alobaidi_gallery_facebook');
delete_option('alobaidi_gallery_twitter');
delete_site_option('alobaidi_gallery_twitter');
delete_option('alobaidi_gallery_instagram');
delete_site_option('alobaidi_gallery_instagram');
delete_option('alobaidi_gallery_favicon');
delete_site_option('alobaidi_gallery_favicon');
delete_option('alobaidi_gallery_bar');
delete_site_option('alobaidi_gallery_bar');
delete_option('alobaidi_gallery_next');
delete_site_option('alobaidi_gallery_next');
delete_option('alobaidi_gallery_prev');
delete_site_option('alobaidi_gallery_prev');
delete_option('alobaidi_gallery_setw');
delete_site_option('alobaidi_gallery_setw');
delete_option('alobaidi_gallery_medw');
delete_site_option('alobaidi_gallery_medw');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

