<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailhawk_default_from_name');
delete_site_option('mailhawk_default_from_name');
delete_option('mailhawk_default_from_email_address');
delete_site_option('mailhawk_default_from_email_address');
delete_option('mailhawk_log_retention_in_days');
delete_site_option('mailhawk_log_retention_in_days');
delete_option('mailhawk_disable_email_logging');
delete_site_option('mailhawk_disable_email_logging');
delete_option('mailhawk_retry_failed_emails');
delete_site_option('mailhawk_retry_failed_emails');
delete_option('mailhawk_failed_email_retries');
delete_site_option('mailhawk_failed_email_retries');
delete_option('mailhawk_mta_credential_key');
delete_site_option('mailhawk_mta_credential_key');
delete_option('mailhawk_license_server_token');
delete_site_option('mailhawk_license_server_token');
delete_option('mailhawk_delete_all_data');
delete_site_option('mailhawk_delete_all_data');
delete_option('mailhawk_ms_sender_domain');
delete_site_option('mailhawk_ms_sender_domain');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mailhawk_is_connected');
delete_site_option('mailhawk_is_connected');
delete_option('mailhawk_access_token');
delete_site_option('mailhawk_access_token');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dates' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('mailhawk_is_suspended');
delete_site_transient('mailhawk_is_suspended');
delete_transient('mailhawk_email_usage');
delete_site_transient('mailhawk_email_usage');

// Clear Cron Jobs
wp_clear_scheduled_hook('mailhawk/send_quarantine_notice');
wp_clear_scheduled_hook('mailhawk/monthly');
wp_clear_scheduled_hook('mailhawk_trim_log_entries');
wp_clear_scheduled_hook('mailhawk_retry_failed_emails');

