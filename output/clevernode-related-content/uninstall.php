<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clevernode_plugin_settings');
delete_site_option('clevernode_plugin_settings');
delete_option('clevernode_account_data');
delete_site_option('clevernode_account_data');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_clevenode-admin-notice-%', '_site_transient_clevenode-admin-notice-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('clevernode-admin-notice-connection');
delete_site_transient('clevernode-admin-notice-connection');
delete_transient('clevernode-admin-notice-activation');
delete_site_transient('clevernode-admin-notice-activation');
delete_transient('clevernode-review-notice');
delete_site_transient('clevernode-review-notice');
delete_transient('clevernode-review-notice-check');
delete_site_transient('clevernode-review-notice-check');
delete_transient('clevernode-review-notice-flag');
delete_site_transient('clevernode-review-notice-flag');

