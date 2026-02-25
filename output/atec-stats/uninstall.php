<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atec_WPAS_stats');
delete_site_option('atec_WPAS_stats');
delete_option('atec_allow_integrity_check');
delete_site_option('atec_allow_integrity_check');
delete_option('atec_dev_mode');
delete_site_option('atec_dev_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('atec_admin_debug');
delete_site_option('atec_admin_debug');

// Delete Transients
delete_transient('atec_wps_cleanup');
delete_site_transient('atec_wps_cleanup');
delete_transient('atec_license_code');
delete_site_transient('atec_license_code');

