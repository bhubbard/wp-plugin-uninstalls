<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmdimo_api_url');
delete_site_option('mmdimo_api_url');
delete_option('mmdimo_username');
delete_site_option('mmdimo_username');
delete_option('mmdimo_api_key');
delete_site_option('mmdimo_api_key');
delete_option('mmdimo_fhid');
delete_site_option('mmdimo_fhid');
delete_option('mmdimo_post_type');
delete_site_option('mmdimo_post_type');
delete_option('mmdimo_default_state');
delete_site_option('mmdimo_default_state');
delete_option('mmdimo_case_check_default');
delete_site_option('mmdimo_case_check_default');
delete_option('mmdimo_update');
delete_site_option('mmdimo_update');
delete_option('mmdimo_install_uuid');
delete_site_option('mmdimo_install_uuid');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mmdimo_case' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mmdimo_case' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mmdimo_case' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mmdimo_case' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mmdimo_charity_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mmdimo_charity_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mmdimo_charity_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mmdimo_charity_metadata' ) );

