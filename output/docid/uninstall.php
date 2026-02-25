<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('docid_general_asset_secret');
delete_site_option('docid_general_asset_secret');
delete_option('docid_general_asset_id');
delete_site_option('docid_general_asset_id');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_docid_user_%', '_site_transient_docid_user_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_docid_skip_auth_%', '_site_transient_docid_skip_auth_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'docid_restricted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'docid_restricted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'docid_restricted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'docid_restricted' ) );

