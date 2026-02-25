<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfufw_options_settings');
delete_site_option('sfufw_options_settings');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('canonical_link');
delete_site_option('canonical_link');
delete_option('twp_be_options_settings');
delete_site_option('twp_be_options_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );

