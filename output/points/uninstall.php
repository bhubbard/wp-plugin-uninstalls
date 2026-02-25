<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('points-comments_enable');
delete_site_option('points-comments_enable');
delete_option('points-comments');
delete_site_option('points-comments');
delete_option('points-welcome');
delete_site_option('points-welcome');
delete_option('points-points_label');
delete_site_option('points-points_label');
delete_option('points-points_singular_label');
delete_site_option('points-points_singular_label');
delete_option('points-points_status');
delete_site_option('points-points_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );

