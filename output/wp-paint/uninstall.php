<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_paint_activated_on');
delete_site_option('wp_paint_activated_on');
delete_option('wp_paint_review_later_time');
delete_site_option('wp_paint_review_later_time');
delete_option('wp_paint_review_done');
delete_site_option('wp_paint_review_done');
delete_option('wp_paint_edits');
delete_site_option('wp_paint_edits');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_wpp_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_wpp_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_wpp_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_wpp_revisions' ) );

