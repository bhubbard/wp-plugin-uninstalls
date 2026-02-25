<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lwviga_video_gallery_default_thumbnail');
delete_site_option('lwviga_video_gallery_default_thumbnail');
delete_option('lwviga_video_gallery_primary_color');
delete_site_option('lwviga_video_gallery_primary_color');
delete_option('lwviga_video_gallery_overlay_color');
delete_site_option('lwviga_video_gallery_overlay_color');
delete_option('lwviga_video_gallery_overlay_opacity');
delete_site_option('lwviga_video_gallery_overlay_opacity');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_lwviga_video_gallery_%', '_site_transient_lwviga_video_gallery_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lwviga_video_gallery_videos' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lwviga_video_gallery_videos' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lwviga_video_gallery_videos' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lwviga_video_gallery_videos' ) );

