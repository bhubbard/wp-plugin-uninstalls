<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdaily_url');
delete_site_option('cdaily_url');
delete_option('cdaily_skip_resource_types');
delete_site_option('cdaily_skip_resource_types');
delete_option('cdaily_username');
delete_site_option('cdaily_username');
delete_option('cdaily_password');
delete_site_option('cdaily_password');
delete_option('cdaily_token');
delete_site_option('cdaily_token');
delete_option('cdaily_used');
delete_site_option('cdaily_used');
delete_option('cdaily_keypair');
delete_site_option('cdaily_keypair');
delete_option('cdaily_resource_management');
delete_site_option('cdaily_resource_management');
delete_option('cdaily_settings');
delete_site_option('cdaily_settings');
delete_option('datetime_format');
delete_site_option('datetime_format');
delete_option('activation_redirect');
delete_site_option('activation_redirect');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdnonce_%', '_site_transient_cdnonce_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

