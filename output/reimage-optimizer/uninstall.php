<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reimop_api_key');
delete_site_option('reimop_api_key');
delete_option('reimop_auto_optimize');
delete_site_option('reimop_auto_optimize');
delete_option('reimop_auto_sync');
delete_site_option('reimop_auto_sync');
delete_option('reimop_delete_media');
delete_site_option('reimop_delete_media');
delete_option('reimop_video_lazyload');
delete_site_option('reimop_video_lazyload');
delete_option('reimop_video_responsive');
delete_site_option('reimop_video_responsive');
delete_option('reimop_video_autoplay');
delete_site_option('reimop_video_autoplay');
delete_option('reimop_video_loop');
delete_site_option('reimop_video_loop');
delete_option('reimop_video_muted');
delete_site_option('reimop_video_muted');
delete_option('reimop_video_controls');
delete_site_option('reimop_video_controls');
delete_option('reimop_auto_optimized');
delete_site_option('reimop_auto_optimized');
delete_option('reimop_setup_complete');
delete_site_option('reimop_setup_complete');
delete_option('reimop_wizard_force_open');
delete_site_option('reimop_wizard_force_open');
delete_option('reimop_optimize_status');
delete_site_option('reimop_optimize_status');
delete_option('reimop_isStartManualOptimization');
delete_site_option('reimop_isStartManualOptimization');
delete_option('reimop_connection_status');
delete_site_option('reimop_connection_status');
delete_option('reimop_video_skip');
delete_site_option('reimop_video_skip');
delete_option('reimop_video_pip');
delete_site_option('reimop_video_pip');
delete_option('reimop_connected');
delete_site_option('reimop_connected');
delete_option('reimop_optimization_complete_dismissed');
delete_site_option('reimop_optimization_complete_dismissed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reimop_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reimop_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reimop_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reimop_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_reimop_optimized_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_reimop_optimized_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_reimop_optimized_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_reimop_optimized_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reimop_optimized_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reimop_optimized_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reimop_optimized_size' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reimop_optimized_size' ) );

