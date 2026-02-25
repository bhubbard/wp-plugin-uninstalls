<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content-slider-main-heading-color');
delete_site_option('content-slider-main-heading-color');
delete_option('content-slider-normal-font-color');
delete_site_option('content-slider-normal-font-color');
delete_option('content-slider-active-slide-title-color');
delete_site_option('content-slider-active-slide-title-color');
delete_option('content-slider-selected-slide-bgcolor');
delete_site_option('content-slider-selected-slide-bgcolor');
delete_option('content-slider-selected-slide-bordercolor');
delete_site_option('content-slider-selected-slide-bordercolor');
delete_option('content-slider-active-slide-bgcolor');
delete_site_option('content-slider-active-slide-bgcolor');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_slider_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_slider_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_slider_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_slider_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_slider_url_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_slider_url_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_slider_url_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_slider_url_target' ) );

