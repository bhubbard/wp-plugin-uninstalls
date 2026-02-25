<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_payment_gateways_by_user_roles_plugin_enabled');
delete_site_option('alg_wc_payment_gateways_by_user_roles_plugin_enabled');
delete_option('alg_wc_payment_gateways_by_user_roles_check_roles');
delete_site_option('alg_wc_payment_gateways_by_user_roles_check_roles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_gateway_roles_in_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'alg_wc_gateway_roles_ex_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('alg_wc_payment_gateways_by_user_roles_version');
delete_site_option('alg_wc_payment_gateways_by_user_roles_version');

