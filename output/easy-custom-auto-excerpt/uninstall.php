<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tonjoo_ecae_options');
delete_site_option('tonjoo_ecae_options');
delete_option('ecae_ignore_notice');
delete_site_option('ecae_ignore_notice');
delete_option('ecae_later_date');
delete_site_option('ecae_later_date');
delete_option('ecae_start_date');
delete_site_option('ecae_start_date');

// Delete Transients
delete_transient('tonjoo_plugins');
delete_site_transient('tonjoo_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ecae_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ecae_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ecae_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ecae_meta' ) );

