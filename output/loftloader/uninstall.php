<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loftloader_lite_version');
delete_site_option('loftloader_lite_version');
delete_option('loftloader-custom-settings');
delete_site_option('loftloader-custom-settings');
delete_option('loftloader_main_switch');
delete_site_option('loftloader_main_switch');
delete_option('loftloader_show_range');
delete_site_option('loftloader_show_range');
delete_option('loftloader_bg_color');
delete_site_option('loftloader_bg_color');
delete_option('loftloader_bg_opacity');
delete_site_option('loftloader_bg_opacity');
delete_option('loftloader_bg_animation');
delete_site_option('loftloader_bg_animation');
delete_option('loftloader_loader_type');
delete_site_option('loftloader_loader_type');
delete_option('loftloader_loader_color');
delete_site_option('loftloader_loader_color');
delete_option('loftloader_custom_img');
delete_site_option('loftloader_custom_img');
delete_option('loftloader_img_width');
delete_site_option('loftloader_img_width');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loftloader_page_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loftloader_page_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loftloader_page_shortcode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loftloader_page_shortcode' ) );

