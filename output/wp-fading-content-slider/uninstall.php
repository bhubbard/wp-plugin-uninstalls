<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sort');
delete_site_option('sort');
delete_option('order');
delete_site_option('order');
delete_option('timeout');
delete_site_option('timeout');
delete_option('fading_slider_width');
delete_site_option('fading_slider_width');
delete_option('fading_slider_height');
delete_site_option('fading_slider_height');
delete_option('fading_slider_bg');
delete_site_option('fading_slider_bg');
delete_option('fading_slider_border');
delete_site_option('fading_slider_border');
delete_option('text_width');
delete_site_option('text_width');
delete_option('text_color');
delete_site_option('text_color');
delete_option('img_width');
delete_site_option('img_width');
delete_option('img_height');
delete_site_option('img_height');
delete_option('limit');
delete_site_option('limit');
delete_option('points');
delete_site_option('points');
delete_option('limit_posts');
delete_site_option('limit_posts');
delete_option('auto_switch');
delete_site_option('auto_switch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fading_slider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fading_slider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fading_slider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fading_slider' ) );

