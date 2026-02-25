<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('generate_settings');
delete_site_option('generate_settings');
delete_option('generate_dynamic_css_output');
delete_site_option('generate_dynamic_css_output');
delete_option('generate_dynamic_css_cached_version');
delete_site_option('generate_dynamic_css_cached_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_customizer_reset_backup_%', '_site_transient_customizer_reset_backup_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

