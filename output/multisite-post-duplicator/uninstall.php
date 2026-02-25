<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdp_settings');
delete_site_option('mdp_settings');
delete_option('skip_standard_dup');
delete_site_option('skip_standard_dup');
delete_option('mpd_admin_bulk_notice');
delete_site_option('mpd_admin_bulk_notice');
delete_option('mpd_admin_notice');
delete_site_option('mpd_admin_notice');
delete_option('source_acf_files');
delete_site_option('source_acf_files');
delete_option('source_acf_images');
delete_site_option('source_acf_images');
delete_option('source_acf_gallery_images');
delete_site_option('source_acf_gallery_images');
delete_option('mpd_considerations');
delete_site_option('mpd_considerations');
delete_option('mpd_noted_posttypes');
delete_site_option('mpd_noted_posttypes');
delete_option('mpd_noted_taxonomies');
delete_site_option('mpd_noted_taxonomies');
delete_option('mpd_has_dismissed_subdomain_error');
delete_site_option('mpd_has_dismissed_subdomain_error');
delete_option('mdp_version');
delete_site_option('mdp_version');
delete_option('avoid_infinite');
delete_site_option('avoid_infinite');
delete_option('avoid_infinite_persist');
delete_site_option('avoid_infinite_persist');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'mpd_media_source_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'mpd_media_source_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'mpd_media_source_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'mpd_media_source_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'mpd_meta_id_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'mpd_meta_id_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'mpd_meta_id_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'mpd_meta_id_%' ) );

