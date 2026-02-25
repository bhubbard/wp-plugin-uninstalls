<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpshift_user');
delete_site_option('wpshift_user');
delete_option('wpshift_api_token');
delete_site_option('wpshift_api_token');
delete_option('wpshift_connected_at');
delete_site_option('wpshift_connected_at');
delete_option('wpshift_email_settings');
delete_site_option('wpshift_email_settings');
delete_option('wpshift_site_health_token');
delete_site_option('wpshift_site_health_token');
delete_option('wpshift_companion_version');
delete_site_option('wpshift_companion_version');

// Delete Transients
delete_transient('wpshift_pending_import');
delete_site_transient('wpshift_pending_import');
delete_transient('wpshift_oauth_result');
delete_site_transient('wpshift_oauth_result');
delete_transient('wpshift_import_error');
delete_site_transient('wpshift_import_error');
delete_transient('wpshift_current_backup');
delete_site_transient('wpshift_current_backup');
delete_transient('wpshift_oauth_state');
delete_site_transient('wpshift_oauth_state');
delete_transient('wpshift_connect_code');
delete_site_transient('wpshift_connect_code');
delete_transient('wpshift_site_status');
delete_site_transient('wpshift_site_status');
delete_transient('wpshift_smtp_settings');
delete_site_transient('wpshift_smtp_settings');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpshift_backup_state_%', '_site_transient_wpshift_backup_state_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wpshift_magic_login_error');
delete_site_transient('wpshift_magic_login_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpshift_process_backup_chunk');

