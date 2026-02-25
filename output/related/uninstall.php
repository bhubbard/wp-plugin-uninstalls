<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('related_show');
delete_site_option('related_show');
delete_option('related_list');
delete_site_option('related_list');
delete_option('related_content');
delete_site_option('related_content');
delete_option('related_content_all');
delete_site_option('related_content_all');
delete_option('related_content_rss');
delete_site_option('related_content_rss');
delete_option('related_content_title');
delete_site_option('related_content_title');
delete_option('related_content_extended');
delete_site_option('related_content_extended');
delete_option('related_double_plugin');
delete_site_option('related_double_plugin');
delete_option('related_du_show');
delete_site_option('related_du_show');
delete_option('related_du_list');
delete_site_option('related_du_list');
delete_option('related_du_content');
delete_site_option('related_du_content');
delete_option('related_du_content_all');
delete_site_option('related_du_content_all');
delete_option('related_du_content_rss');
delete_site_option('related_du_content_rss');
delete_option('related_du_content_title');
delete_site_option('related_du_content_title');
delete_option('related_du_content_extended');
delete_site_option('related_du_content_extended');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'related_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'related_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'related_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'related_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'related_du_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'related_du_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'related_du_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'related_du_posts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

