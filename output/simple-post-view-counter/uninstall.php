<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpvc_exclude_admins');
delete_site_option('simpvc_exclude_admins');
delete_option('simpvc_display_position');
delete_site_option('simpvc_display_position');
delete_option('simpvc_show_on_homepage');
delete_site_option('simpvc_show_on_homepage');
delete_option('simpvc_show_on_archive');
delete_site_option('simpvc_show_on_archive');
delete_option('widget_simpvc_most_viewed_widget');
delete_site_option('widget_simpvc_most_viewed_widget');

// Delete Transients
delete_transient('simpvc_popular_posts');
delete_site_transient('simpvc_popular_posts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'simpvc_last_viewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'simpvc_last_viewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'simpvc_last_viewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'simpvc_last_viewed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'simpvc_post_views_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'simpvc_post_views_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'simpvc_post_views_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'simpvc_post_views_count' ) );

