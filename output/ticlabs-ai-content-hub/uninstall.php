<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ticlabsaich-opt-openai-api-key');
delete_site_option('ticlabsaich-opt-openai-api-key');
delete_option('ticlabsaich-opt-openai-api-model');
delete_site_option('ticlabsaich-opt-openai-api-model');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-img-api-key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ticlabsaich-opt-openai-model');
delete_site_option('ticlabsaich-opt-openai-model');
delete_option('ticlabsaich_license_key');
delete_site_option('ticlabsaich_license_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-text-api-key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

