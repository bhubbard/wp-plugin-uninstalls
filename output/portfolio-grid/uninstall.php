<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('portfolio_tags_settings');
delete_site_option('portfolio_tags_settings');
delete_option('portfolio_images_settings');
delete_site_option('portfolio_images_settings');
delete_option('portfolio_layout_settings');
delete_site_option('portfolio_layout_settings');
delete_option('portfolio_encrypt_images');
delete_site_option('portfolio_encrypt_images');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'portfolio_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'portfolio_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'portfolio_post_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'portfolio_post_meta' ) );

