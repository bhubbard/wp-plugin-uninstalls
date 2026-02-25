<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trt_pvc_custom_css');
delete_site_option('trt_pvc_custom_css');
delete_option('trt_pvc_track_ip');
delete_site_option('trt_pvc_track_ip');
delete_option('trt_pvc_archive_columns');
delete_site_option('trt_pvc_archive_columns');
delete_option('trt_pvc_posts_per_page');
delete_site_option('trt_pvc_posts_per_page');
delete_option('trt_pvc_show_column');
delete_site_option('trt_pvc_show_column');
delete_option('trt_pvc_custom_post_type');
delete_site_option('trt_pvc_custom_post_type');
delete_option('trt_pvc_sort_by_views');
delete_site_option('trt_pvc_sort_by_views');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trt_pvc_tracked_ips' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trt_pvc_tracked_ips' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trt_pvc_tracked_ips' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trt_pvc_tracked_ips' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trt_pvc_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trt_pvc_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trt_pvc_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trt_pvc_post_views' ) );

