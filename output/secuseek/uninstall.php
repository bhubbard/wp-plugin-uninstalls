<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secuseek_last_scan_id');
delete_site_option('secuseek_last_scan_id');
delete_option('SecuseekUserJobScheduleId');
delete_site_option('SecuseekUserJobScheduleId');
delete_option('secuseek_scan_creation_timestamp');
delete_site_option('secuseek_scan_creation_timestamp');
delete_option('secuseek_delete_data_on_uninstall');
delete_site_option('secuseek_delete_data_on_uninstall');
delete_option('secuseek_plugin_do_activation_redirect');
delete_site_option('secuseek_plugin_do_activation_redirect');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_secuseek_scan_error_%', '_site_transient_secuseek_scan_error_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('secuseek_scan_started');
delete_site_transient('secuseek_scan_started');
delete_transient('secuseek_scan_completed');
delete_site_transient('secuseek_scan_completed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_secuseek_scan_rate_limit_%', '_site_transient_secuseek_scan_rate_limit_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('secuseek_fetch_cron_hook');
wp_clear_scheduled_hook('secuseek_daily_scan');
wp_clear_scheduled_hook('secuseek_start_scan_after_key_save');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'secuseek_scan_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'secuseek_scan_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'secuseek_scan_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'secuseek_scan_api_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'secuseek_api_key_last_rotation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'secuseek_api_key_last_rotation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'secuseek_api_key_last_rotation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'secuseek_api_key_last_rotation' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'secuseek_api_key_last_used' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'secuseek_api_key_last_used' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'secuseek_api_key_last_used' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'secuseek_api_key_last_used' ) );

