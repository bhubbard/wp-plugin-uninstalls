<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pardot_crypto_key');
delete_site_option('pardot_crypto_key');
delete_option('pardot_settings');
delete_site_option('pardot_settings');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pardot_form_html_%', '_site_transient_pardot_form_html_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pardot_dynamicContent_html_%', '_site_transient_pardot_dynamicContent_html_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pardot_forms');
delete_site_transient('pardot_forms');
delete_transient('pardot_dynamicContent');
delete_site_transient('pardot_dynamicContent');
delete_transient('pardot_tracking_code_template');
delete_site_transient('pardot_tracking_code_template');

