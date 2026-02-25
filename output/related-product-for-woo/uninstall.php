<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spfw_version');
delete_site_option('spfw_version');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('spfw_empty_behavior');
delete_site_option('spfw_empty_behavior');

// Delete Transients
delete_transient('_spfw_screen_activation_redirect');
delete_site_transient('_spfw_screen_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_spfw_related_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_spfw_related_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_spfw_related_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_spfw_related_ids' ) );

