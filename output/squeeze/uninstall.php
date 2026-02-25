<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('squeeze_stats');
delete_site_option('squeeze_stats');
delete_option('squeeze_options');
delete_site_option('squeeze_options');
delete_option('squeeze_do_activation_redirect');
delete_site_option('squeeze_do_activation_redirect');

// Delete Transients
delete_transient('squeeze_bulk_path');
delete_site_transient('squeeze_bulk_path');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'squeeze_is_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'squeeze_is_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'squeeze_is_compressed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'squeeze_is_compressed' ) );

