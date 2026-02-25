<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ga_profile');
delete_site_option('ga_profile');
delete_option('wp_headmaster_ga_choice');
delete_site_option('wp_headmaster_ga_choice');
delete_option('wp_headmaster_favicon');
delete_site_option('wp_headmaster_favicon');
delete_option('wp_headmaster_touch_icon');
delete_site_option('wp_headmaster_touch_icon');
delete_option('wp_headmaster_google_font');
delete_site_option('wp_headmaster_google_font');
delete_option('wp_headmaster_typekit');
delete_site_option('wp_headmaster_typekit');
delete_option('wp_headmaster_edgewebfonts');
delete_site_option('wp_headmaster_edgewebfonts');
delete_option('wp_headmaster_jquery_choice');
delete_site_option('wp_headmaster_jquery_choice');
delete_option('wp_headmaster_jquery_google_version');
delete_site_option('wp_headmaster_jquery_google_version');
delete_option('wp_headmaster_respondjs');
delete_site_option('wp_headmaster_respondjs');
delete_option('wphm_modernizr');
delete_site_option('wphm_modernizr');
delete_option('inline_styles');
delete_site_option('inline_styles');
delete_option('wp_headmaster_meta_author_auto');
delete_site_option('wp_headmaster_meta_author_auto');
delete_option('wp_headmaster_format_detection');
delete_site_option('wp_headmaster_format_detection');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_headmaster_js_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_headmaster_js_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_headmaster_js_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_headmaster_js_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_headmaster_css_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_headmaster_css_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_headmaster_css_value_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_headmaster_css_value_key' ) );

