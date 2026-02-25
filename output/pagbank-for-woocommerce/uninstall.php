<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pagbank_stored_keypair');
delete_site_option('pagbank_stored_keypair');

// Delete Transients
delete_transient('pagbank_oauth_code_verifier');
delete_site_transient('pagbank_oauth_code_verifier');
delete_transient('pagbank_oauth_application_id');
delete_site_transient('pagbank_oauth_application_id');
delete_transient('pagbank_oauth_environment');
delete_site_transient('pagbank_oauth_environment');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pagbank_cached_request_%', '_site_transient_pagbank_cached_request_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pagbank_account_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pagbank_account_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pagbank_account_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pagbank_account_id' ) );

