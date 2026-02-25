<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('glideshow-background-color');
delete_site_option('glideshow-background-color');
delete_option('glideshow-img-height');
delete_site_option('glideshow-img-height');
delete_option('glideshow-border-color');
delete_site_option('glideshow-border-color');
delete_option('glideshow-img-width');
delete_site_option('glideshow-img-width');
delete_option('glideshow-text-color');
delete_site_option('glideshow-text-color');
delete_option('glideshow-title-size');
delete_site_option('glideshow-title-size');
delete_option('glideshow-text-width');
delete_site_option('glideshow-text-width');
delete_option('glideshow-navigation-background-color');
delete_site_option('glideshow-navigation-background-color');
delete_option('glideshow-navigation-color');
delete_site_option('glideshow-navigation-color');
delete_option('glideshow-navigation-active-color');
delete_site_option('glideshow-navigation-active-color');
delete_option('glideshow-navigation-active-background-color');
delete_site_option('glideshow-navigation-active-background-color');
delete_option('glideshow-slider-speed');
delete_site_option('glideshow-slider-speed');
delete_option('glideshow-slider-style');
delete_site_option('glideshow-slider-style');
delete_option('glideshow-slider-auto');
delete_site_option('glideshow-slider-auto');
delete_option('glideshow-slider-duration');
delete_site_option('glideshow-slider-duration');
delete_option('glideshow-order');
delete_site_option('glideshow-order');
delete_option('glideshow-sort');
delete_site_option('glideshow-sort');
delete_option('glideshow-text-length');
delete_site_option('glideshow-text-length');
delete_option('glideshow-navigation-back');
delete_site_option('glideshow-navigation-back');
delete_option('glideshow-navigation-next');
delete_site_option('glideshow-navigation-next');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_glider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_glider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_glider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_glider' ) );

