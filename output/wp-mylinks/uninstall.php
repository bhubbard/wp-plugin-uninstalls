<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_mylinks_hide_notice');
delete_site_option('wp_mylinks_hide_notice');
delete_option('mylinks_theme');
delete_site_option('mylinks_theme');
delete_option('mylinks_meta_title');
delete_site_option('mylinks_meta_title');
delete_option('mylinks_meta_description');
delete_site_option('mylinks_meta_description');
delete_option('mylinks_upload_favicon');
delete_site_option('mylinks_upload_favicon');
delete_option('wp_mylinks_nofollow');
delete_site_option('wp_mylinks_nofollow');
delete_option('wp_mylinks_noindex');
delete_site_option('wp_mylinks_noindex');
delete_option('wp_mylinks_credits');
delete_site_option('wp_mylinks_credits');
delete_option('wp_mylinks_analytics');
delete_site_option('wp_mylinks_analytics');
delete_option('wp_mylinks_header_script');
delete_site_option('wp_mylinks_header_script');
delete_option('wp_mylinks_open_body_script');
delete_site_option('wp_mylinks_open_body_script');
delete_option('wp_mylinks_footer_script');
delete_site_option('wp_mylinks_footer_script');
delete_option('wp_mylinks_custom_css');
delete_site_option('wp_mylinks_custom_css');
delete_option('wp_mylinks_dequeue');
delete_site_option('wp_mylinks_dequeue');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_mylinks_count_visits' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_mylinks_count_visits' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_mylinks_count_visits' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_mylinks_count_visits' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

