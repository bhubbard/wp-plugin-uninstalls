<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_bio_links_nickname_color');
delete_site_option('wp_bio_links_nickname_color');
delete_option('wp_bio_links_link_bg_color');
delete_site_option('wp_bio_links_link_bg_color');
delete_option('wp_bio_links_link_border_color');
delete_site_option('wp_bio_links_link_border_color');
delete_option('wp_bio_links_link_text_color');
delete_site_option('wp_bio_links_link_text_color');
delete_option('wp_bio_links_thumbnail');
delete_site_option('wp_bio_links_thumbnail');
delete_option('wp_bio_links_credits');
delete_site_option('wp_bio_links_credits');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_bio_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_bio_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_bio_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_bio_links' ) );

