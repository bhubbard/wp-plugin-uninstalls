<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inkreez_key');
delete_site_option('inkreez_key');
delete_option('inkreez_sequences');
delete_site_option('inkreez_sequences');
delete_option('inkreez_gtm_code_id');
delete_site_option('inkreez_gtm_code_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'inkreez_cf7_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('inkreez_gtm_code_head');
delete_site_option('inkreez_gtm_code_head');
delete_option('inkreez_gtm_code_body');
delete_site_option('inkreez_gtm_code_body');
delete_option('inkreez_role');
delete_site_option('inkreez_role');

// Delete Transients
delete_transient('inkreez_custom_plugin_redirect');
delete_site_transient('inkreez_custom_plugin_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_customer_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_customer_user' ) );

