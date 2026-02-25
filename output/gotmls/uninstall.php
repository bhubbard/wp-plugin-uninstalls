<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_blob' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_array' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('GOTMLS_settings_array');
delete_site_option('GOTMLS_settings_array');
delete_option('GOTMLS_definitions_array');
delete_site_option('GOTMLS_definitions_array');
delete_option('GOTMLS_get_URL_blob');
delete_site_option('GOTMLS_get_URL_blob');
delete_option('GOTMLS_definitions_blob');
delete_site_option('GOTMLS_definitions_blob');
delete_option('GOTMLS_nonce_blob');
delete_site_option('GOTMLS_nonce_blob');
delete_option('GOTMLS_Installation_Keys');
delete_site_option('GOTMLS_Installation_Keys');
delete_option('WP_firewall_exclude_terms');
delete_site_option('WP_firewall_exclude_terms');
delete_option('WP_firewall_whitelisted_ip');
delete_site_option('WP_firewall_whitelisted_ip');
delete_option('GOTMLS_get_URL_array');
delete_site_option('GOTMLS_get_URL_array');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'GOTMLS_threats_found' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'GOTMLS_threats_found' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'GOTMLS_threats_found' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'GOTMLS_threats_found' ) );

