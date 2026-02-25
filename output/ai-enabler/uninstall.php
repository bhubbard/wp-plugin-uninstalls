<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rgfb_openai_api_key');
delete_site_option('rgfb_openai_api_key');
delete_option('rgfb_openai_model');
delete_site_option('rgfb_openai_model');
delete_option('rgfb_stability_key');
delete_site_option('rgfb_stability_key');
delete_option('rgfb_fal_key');
delete_site_option('rgfb_fal_key');
delete_option('rgfb_leonardo_key');
delete_site_option('rgfb_leonardo_key');
delete_option('rgfb_claude_key');
delete_site_option('rgfb_claude_key');
delete_option('rgfb_claude_model');
delete_site_option('rgfb_claude_model');
delete_option('rgfb_image_generation_model');
delete_site_option('rgfb_image_generation_model');
delete_option('rgfb_limit_image_requests_by_ip');
delete_site_option('rgfb_limit_image_requests_by_ip');
delete_option('rgfb_image_generation_strength');
delete_site_option('rgfb_image_generation_strength');
delete_option('rgfb_video_resolution');
delete_site_option('rgfb_video_resolution');
delete_option('rgfb_FAL_key');
delete_site_option('rgfb_FAL_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'structure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'structure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'structure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'structure' ) );

