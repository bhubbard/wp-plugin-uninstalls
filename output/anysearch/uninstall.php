<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('anysearch_last_sync');
delete_site_option('anysearch_last_sync');
delete_option('activated_anysearch');
delete_site_option('activated_anysearch');
delete_option('anysearch_sync_settings');
delete_site_option('anysearch_sync_settings');
delete_option('anysearch_api_key');
delete_site_option('anysearch_api_key');
delete_option('anysearch_frontend_key');
delete_site_option('anysearch_frontend_key');
delete_option('anysearch_sync_status');
delete_site_option('anysearch_sync_status');
delete_option('anysearch_notices');
delete_site_option('anysearch_notices');
delete_option('anysearch_ssl_disabled');
delete_site_option('anysearch_ssl_disabled');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('anysearch_full_sync_cron_worker_start');

