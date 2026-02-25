<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('connect_ez_plugin_options');
delete_site_option('connect_ez_plugin_options');
delete_option('connect_ez_plugin_do_activation_redirect');
delete_site_option('connect_ez_plugin_do_activation_redirect');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sip_form_token_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sip_secure_data_%', '_site_transient_sip_secure_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

