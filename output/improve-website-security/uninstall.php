<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('change_admin_url_improve_website_security_itc');
delete_site_option('change_admin_url_improve_website_security_itc');
delete_option('itc_plugin_deactivation_secret_improve_website_security_itc');
delete_site_option('itc_plugin_deactivation_secret_improve_website_security_itc');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_itc_improve_website_security%', '_site_transient_itc_improve_website_security%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

