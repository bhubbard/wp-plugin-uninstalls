<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bleep_filter_content');
delete_site_option('bleep_filter_content');
delete_option('bleep_filter_content_rss');
delete_site_option('bleep_filter_content_rss');
delete_option('bleep_filter_comment');
delete_site_option('bleep_filter_comment');
delete_option('bleep_filter_comment_rss');
delete_site_option('bleep_filter_comment_rss');
delete_option('bleep_filter_bbpress');
delete_site_option('bleep_filter_bbpress');
delete_option('bleep_filter_format');
delete_site_option('bleep_filter_format');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bleep_replacement' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bleep_replacement' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bleep_replacement' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bleep_replacement' ) );

