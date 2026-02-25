<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpts_options');
delete_site_option('cpts_options');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('codepeople_theme_switch_registered');
delete_site_transient('codepeople_theme_switch_registered');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_theme_switch_theme_%', '_site_transient_codepeople_theme_switch_theme_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

