<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('link_monitor_in_posts');
delete_site_option('link_monitor_in_posts');
delete_option('link_monitor_in_pages');
delete_site_option('link_monitor_in_pages');
delete_option('link_monitor_in_excerpt');
delete_site_option('link_monitor_in_excerpt');
delete_option('link_monitor_get');
delete_site_option('link_monitor_get');
delete_option('link_monitor_in_comments');
delete_site_option('link_monitor_in_comments');
delete_option('link_monitor_in_feed');
delete_site_option('link_monitor_in_feed');
delete_option('link_monitor_in_custom_posts');
delete_site_option('link_monitor_in_custom_posts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'show_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'show_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'show_links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'show_links' ) );

