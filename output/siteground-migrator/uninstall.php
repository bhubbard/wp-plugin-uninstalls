<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siteground_migrator_temp_directory');
delete_site_option('siteground_migrator_temp_directory');
delete_option('siteground_migrator_encryption_key');
delete_site_option('siteground_migrator_encryption_key');
delete_option('siteground_migrator_is_siteground_env');
delete_site_option('siteground_migrator_is_siteground_env');
delete_option('siteground_migrator_transfer_id');
delete_site_option('siteground_migrator_transfer_id');
delete_option('siteground_migrator_transfer_psk');
delete_site_option('siteground_migrator_transfer_psk');
delete_option('siteground_migrator_transfer_token');
delete_site_option('siteground_migrator_transfer_token');
delete_option('siteground_migrator_transfer_status');
delete_site_option('siteground_migrator_transfer_status');
delete_option('wp_background_process_pid');
delete_site_option('wp_background_process_pid');
delete_option('siteground_migrator_progress');
delete_site_option('siteground_migrator_progress');
delete_option('siteground_migrator_email_recipient');
delete_site_option('siteground_migrator_email_recipient');
delete_option('siteground_migrator_send_email_notification');
delete_site_option('siteground_migrator_send_email_notification');
delete_option('sg_migrator_colibri');
delete_site_option('sg_migrator_colibri');
delete_option('siteground_migrator_current_step');
delete_site_option('siteground_migrator_current_step');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

