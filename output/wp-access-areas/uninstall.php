<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpaa_default_post_status');
delete_site_option('wpaa_default_post_status');
delete_option('wpaa_default_view_cap');
delete_site_option('wpaa_default_view_cap');
delete_option('wpaa_default_edit_cap');
delete_site_option('wpaa_default_edit_cap');
delete_option('wpaa_default_comment_cap');
delete_site_option('wpaa_default_comment_cap');
delete_option('wpaa_default_behavior');
delete_site_option('wpaa_default_behavior');
delete_option('wpaa_fallback_page');
delete_site_option('wpaa_fallback_page');
delete_option('accessareas_version');
delete_site_option('accessareas_version');
delete_option('wpaa_enable_assign_cap');
delete_site_option('wpaa_enable_assign_cap');
delete_option('wpaa_default_caps');
delete_site_option('wpaa_default_caps');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpaa_fallback_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpaa_fallback_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpaa_fallback_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpaa_fallback_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpaa_post_behavior' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpaa_post_behavior' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpaa_post_behavior' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpaa_post_behavior' ) );

