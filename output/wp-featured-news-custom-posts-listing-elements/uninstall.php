<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpb_js_google_fonts_subsets');
delete_site_option('wpb_js_google_fonts_subsets');
delete_option('title_font_settings');
delete_site_option('title_font_settings');
delete_option('headline_font_settings');
delete_site_option('headline_font_settings');
delete_option('meta_font_settings');
delete_site_option('meta_font_settings');
delete_option('excerpt_font_settings');
delete_site_option('excerpt_font_settings');
delete_option('button_font_settings');
delete_site_option('button_font_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_category_color' ) );

