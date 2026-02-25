<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('triberr_apikey');
delete_site_option('triberr_apikey');
delete_option('triberr_message');
delete_site_option('triberr_message');
delete_option('triberr_comments_width');
delete_site_option('triberr_comments_width');
delete_option('triberr_comments_bg_color');
delete_site_option('triberr_comments_bg_color');
delete_option('triberr_comments_status');
delete_site_option('triberr_comments_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_triberr_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_triberr_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_triberr_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_triberr_id' ) );

