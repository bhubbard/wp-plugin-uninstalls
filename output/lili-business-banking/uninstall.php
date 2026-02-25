<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lili_user_id');
delete_site_option('lili_user_id');
delete_option('lili_auth_token');
delete_site_option('lili_auth_token');
delete_option('lili_challenge_id');
delete_site_option('lili_challenge_id');
delete_option('lili_challenge');
delete_site_option('lili_challenge');
delete_option('lili_auth_token_timestamp');
delete_site_option('lili_auth_token_timestamp');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_lili_user_details_%', '_site_transient_lili_user_details_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_lili_user_transactions_%', '_site_transient_lili_user_transactions_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

