<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpfw_version');
delete_site_option('bpfw_version');
delete_option('bpfw_fix_conflict_read_book_addons_for_book_store');
delete_site_option('bpfw_fix_conflict_read_book_addons_for_book_store');

// Delete Transients
delete_transient('bpfw_installing');
delete_site_transient('bpfw_installing');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bpfw_back_img' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bpfw_back_img' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bpfw_back_img' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bpfw_back_img' ) );

