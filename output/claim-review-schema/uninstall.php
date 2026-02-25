<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cr-post-types');
delete_site_option('cr-post-types');
delete_option('cr-organisation-name');
delete_site_option('cr-organisation-name');
delete_option('cr-organisation-url');
delete_site_option('cr-organisation-url');
delete_option('cr-organisation-max-number-rating');
delete_site_option('cr-organisation-max-number-rating');
delete_option('cr-organisation-min-number-rating');
delete_site_option('cr-organisation-min-number-rating');
delete_option('cr-organisation-alternate-url');
delete_site_option('cr-organisation-alternate-url');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fullfact_all_claims' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fullfact_all_claims' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fullfact_all_claims' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fullfact_all_claims' ) );

