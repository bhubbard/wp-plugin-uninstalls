<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('szamlahegy_wc_api_key');
delete_site_option('szamlahegy_wc_api_key');
delete_option('szamlahegy_wc_default_productnr');
delete_site_option('szamlahegy_wc_default_productnr');
delete_option('szamlahegy_wc_test');
delete_site_option('szamlahegy_wc_test');
delete_option('szamlahegy_wc_invoice_type');
delete_site_option('szamlahegy_wc_invoice_type');
delete_option('szamlahegy_wc_server_url');
delete_site_option('szamlahegy_wc_server_url');
delete_option('szamlahegy_wc_generate_auto');
delete_site_option('szamlahegy_wc_generate_auto');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_szamlahegy_wc_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_szamlahegy_wc_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_szamlahegy_wc_response' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_szamlahegy_wc_response' ) );

