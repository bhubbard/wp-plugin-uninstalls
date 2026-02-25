<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siteimprove_prepublish_allowed');
delete_site_option('siteimprove_prepublish_allowed');
delete_option('siteimprove_prepublish_enabled');
delete_site_option('siteimprove_prepublish_enabled');
delete_option('siteimprove_token');
delete_site_option('siteimprove_token');
delete_option('siteimprove_overlayjs_file');
delete_site_option('siteimprove_overlayjs_file');
delete_option('siteimprove_disable_new_version');
delete_site_option('siteimprove_disable_new_version');
delete_option('siteimprove_api_key');
delete_site_option('siteimprove_api_key');
delete_option('siteimprove_public_url');
delete_site_option('siteimprove_public_url');
delete_option('siteimprove_ignore_path_segments');
delete_site_option('siteimprove_ignore_path_segments');
delete_option('siteimprove_api_username');
delete_site_option('siteimprove_api_username');
delete_option('siteimprove_dev_mode');
delete_site_option('siteimprove_dev_mode');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_siteimprove_url_%', '_site_transient_siteimprove_url_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

