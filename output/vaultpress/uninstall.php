<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_vp_signatures');
delete_site_option('_vp_signatures');
delete_option('_vp_current_scan');
delete_site_option('_vp_current_scan');
delete_option('_vp_ignore_symlinks');
delete_site_option('_vp_ignore_symlinks');
delete_option('_vp_batch_file_size');
delete_site_option('_vp_batch_file_size');
delete_option('vaultpress');
delete_site_option('vaultpress');
delete_option('vaultpress_auto_connect');
delete_site_option('vaultpress_auto_connect');
delete_option('vaultpress_connection');
delete_site_option('vaultpress_connection');
delete_option('vaultpress_key');
delete_site_option('vaultpress_key');
delete_option('vaultpress_secret');
delete_site_option('vaultpress_secret');
delete_option('vaultpress_service_ips');
delete_site_option('vaultpress_service_ips');
delete_option('vaultpress_allow_forwarded_for');
delete_site_option('vaultpress_allow_forwarded_for');
delete_option('vaultpress_service_ips_external_cidr');
delete_site_option('vaultpress_service_ips_external_cidr');
delete_option('_vp_config_option_name_ignore');
delete_site_option('_vp_config_option_name_ignore');
delete_option('_vp_config_post_meta_name_ignore');
delete_site_option('_vp_config_post_meta_name_ignore');
delete_option('_vp_config_should_ignore_files');
delete_site_option('_vp_config_should_ignore_files');
delete_option('vaultpress_auto_register');
delete_site_option('vaultpress_auto_register');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_vp_ai_ping_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('vaultpress_service_ips_external');
delete_site_option('vaultpress_service_ips_external');

// Clear Cron Jobs
wp_clear_scheduled_hook('vp_scan_site');
wp_clear_scheduled_hook('vp_scan_next_batch');

