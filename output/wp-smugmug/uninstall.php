<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_smugmug_version');
delete_site_option('wp_smugmug_version');
delete_option('wp_smugmug_installed');
delete_site_option('wp_smugmug_installed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_smugmug_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_smugmug_thumbsize');
delete_site_option('wp_smugmug_thumbsize');
delete_option('wp_smugmug_size');
delete_site_option('wp_smugmug_size');
delete_option('wp_smugmug_imagecount');
delete_site_option('wp_smugmug_imagecount');
delete_option('wp_smugmug_start');
delete_site_option('wp_smugmug_start');
delete_option('wp_smugmug_num');
delete_site_option('wp_smugmug_num');
delete_option('wp_smugmug_link');
delete_site_option('wp_smugmug_link');
delete_option('wp_smugmug_titletag');
delete_site_option('wp_smugmug_titletag');
delete_option('wp_smugmug_captions');
delete_site_option('wp_smugmug_captions');
delete_option('wp_smugmug_sort');
delete_site_option('wp_smugmug_sort');
delete_option('wp_smugmug_lightbox');
delete_site_option('wp_smugmug_lightbox');
delete_option('wp_smugmug_smugmug');
delete_site_option('wp_smugmug_smugmug');
delete_option('wp_smugmug_window');
delete_site_option('wp_smugmug_window');
delete_option('wp_smugmug_css');
delete_site_option('wp_smugmug_css');
delete_option('wp_smugmug_css_ie');
delete_site_option('wp_smugmug_css_ie');
delete_option('wp_smugmug_title');
delete_site_option('wp_smugmug_title');
delete_option('wp_smugmug_description');
delete_site_option('wp_smugmug_description');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-smugmug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-smugmug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-smugmug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-smugmug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-smugmug-options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-smugmug-options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-smugmug-options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-smugmug-options' ) );

