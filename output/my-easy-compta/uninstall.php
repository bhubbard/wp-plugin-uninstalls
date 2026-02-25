<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecwp_db_version');
delete_site_option('ecwp_db_version');
delete_option('ecwp_encryption_key');
delete_site_option('ecwp_encryption_key');
delete_option('ecwp_client_license_key');
delete_site_option('ecwp_client_license_key');
delete_option('ecwp_client_license_data');
delete_site_option('ecwp_client_license_data');

// Delete Transients
delete_transient('ecwp_activation_redirect');
delete_site_transient('ecwp_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'my_easy_compta_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'my_easy_compta_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'my_easy_compta_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'my_easy_compta_banner_dismissed' ) );

