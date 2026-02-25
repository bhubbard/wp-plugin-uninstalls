<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vlss_api_key');
delete_site_option('vlss_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vlss_api_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'vlss_otp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('vlss_tokenizer_verified');
delete_site_option('vlss_tokenizer_verified');
delete_option('vlss_tokenizer_registered');
delete_site_option('vlss_tokenizer_registered');
delete_option('vlss_tokenizer_client_id');
delete_site_option('vlss_tokenizer_client_id');
delete_option('vlss_tokenizer_api_key');
delete_site_option('vlss_tokenizer_api_key');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vlss_otp_%', '_site_transient_vlss_otp_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

