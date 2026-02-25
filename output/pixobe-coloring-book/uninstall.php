<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pixobe_colorgizer_site_id');
delete_site_option('pixobe_colorgizer_site_id');
delete_option('pixobe_coloring_expiry');
delete_site_option('pixobe_coloring_expiry');
delete_option('pixobe_coloring_nonce');
delete_site_option('pixobe_coloring_nonce');
delete_option('pixobe_colorgizer_plan');
delete_site_option('pixobe_colorgizer_plan');
delete_option('pixobe_colorgizer_message');
delete_site_option('pixobe_colorgizer_message');
delete_option('pixobe_coloring_book_checkboxes');
delete_site_option('pixobe_coloring_book_checkboxes');
delete_option('pixobe_coloring_book_colors');
delete_site_option('pixobe_coloring_book_colors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pixobe_coloring_meta_initialized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pixobe_coloring_meta_initialized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pixobe_coloring_meta_initialized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pixobe_coloring_meta_initialized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pixobe_coloring_colors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pixobe_coloring_colors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pixobe_coloring_colors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pixobe_coloring_colors' ) );

