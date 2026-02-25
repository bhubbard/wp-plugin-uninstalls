<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpopus_recent_demo_url');
delete_site_option('wpopus_recent_demo_url');
delete_option('wpopus_preload_enable');
delete_site_option('wpopus_preload_enable');
delete_option('wpopus_preload_image');
delete_site_option('wpopus_preload_image');
delete_option('wpopus_preload_bg_color');
delete_site_option('wpopus_preload_bg_color');
delete_option('wpopus_preload_image_width');
delete_site_option('wpopus_preload_image_width');
delete_option('wpopus_backtotop_enable');
delete_site_option('wpopus_backtotop_enable');
delete_option('wpopus_backtotop_image');
delete_site_option('wpopus_backtotop_image');
delete_option('wpopus_backtotop_image_width');
delete_site_option('wpopus_backtotop_image_width');
delete_option('wpopus_backtotop_padding');
delete_site_option('wpopus_backtotop_padding');
delete_option('wpopus_backtotop_bg_color');
delete_site_option('wpopus_backtotop_bg_color');
delete_option('wpopus_backtotop_border');
delete_site_option('wpopus_backtotop_border');
delete_option('wpopus_backtotop_border_radius');
delete_site_option('wpopus_backtotop_border_radius');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

