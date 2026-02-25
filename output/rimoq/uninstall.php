<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rimoq_settings');
delete_site_option('rimoq_settings');
delete_option('rimoq_resync_status');
delete_site_option('rimoq_resync_status');
delete_option('rimoq_version');
delete_site_option('rimoq_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rimoq_error_%', '_site_transient_rimoq_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rimoq_success_%', '_site_transient_rimoq_success_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('rimoq_admin_errors');
delete_site_transient('rimoq_admin_errors');
delete_transient('rimoq_api_call_details');
delete_site_transient('rimoq_api_call_details');
delete_transient('rimoq_admin_success');
delete_site_transient('rimoq_admin_success');
delete_transient('rimoq_resync_queue');
delete_site_transient('rimoq_resync_queue');
delete_transient('rimoq_resync_report');
delete_site_transient('rimoq_resync_report');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rimoq_bot_info_%', '_site_transient_rimoq_bot_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('rimoq_welcome_notice');
delete_site_transient('rimoq_welcome_notice');
delete_transient('rimoq_api_status');
delete_site_transient('rimoq_api_status');
delete_transient('rimoq_last_sync_time');
delete_site_transient('rimoq_last_sync_time');
delete_transient('rimoq_resync_status');
delete_site_transient('rimoq_resync_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('rimoq_resync_process_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );

