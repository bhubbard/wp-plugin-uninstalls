<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfa_sh_do_redirect');
delete_site_option('wpfa_sh_do_redirect');
delete_option('wpfa_cron_token');
delete_site_option('wpfa_cron_token');
delete_option('wpfa_block_user_enumeration');
delete_site_option('wpfa_block_user_enumeration');
delete_option('wpfa_block_new_admins');
delete_site_option('wpfa_block_new_admins');
delete_option('wpfa_disable_xmlrpc');
delete_site_option('wpfa_disable_xmlrpc');
delete_option('wpfa_limit_login_attempts');
delete_site_option('wpfa_limit_login_attempts');
delete_option('wpfa_admin_bar_lock_status_display');
delete_site_option('wpfa_admin_bar_lock_status_display');
delete_option('wpfa_never_lock_content');
delete_site_option('wpfa_never_lock_content');
delete_option('wpfa_site_lock_auto_enable');
delete_site_option('wpfa_site_lock_auto_enable');
delete_option('wpfa_cached_state_last_built');
delete_site_option('wpfa_cached_state_last_built');
delete_option('wpfa_never_lock_plugins');
delete_site_option('wpfa_never_lock_plugins');
delete_option('wpfa_never_lock_root');
delete_site_option('wpfa_never_lock_root');
delete_option('folder_auditor_ignored');
delete_site_option('folder_auditor_ignored');
delete_option('wpfa_scan_settings');
delete_site_option('wpfa_scan_settings');
delete_option('fa_ignore_list');
delete_site_option('fa_ignore_list');
delete_option('wpfa_report_settings');
delete_site_option('wpfa_report_settings');
delete_option('wpfa_never_lock_uploads');
delete_site_option('wpfa_never_lock_uploads');
delete_option('wpfa_settings');
delete_site_option('wpfa_settings');
delete_option('wpfa_ignored_db_items');
delete_site_option('wpfa_ignored_db_items');
delete_option('wpfa_disable_all_user_creation');
delete_site_option('wpfa_disable_all_user_creation');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpfa_sh_options');
delete_site_option('wpfa_sh_options');
delete_option('wpfa_block_email_login');
delete_site_option('wpfa_block_email_login');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wpfa_last_scan_result');
delete_site_transient('wpfa_last_scan_result');
delete_transient('wpfa_last_report_result');
delete_site_transient('wpfa_last_report_result');

// Clear Cron Jobs
wp_clear_scheduled_hook('site_lock_auto_renable');
wp_clear_scheduled_hook('wpfa_run_infection_scan_event');
wp_clear_scheduled_hook('wpfa_send_report_event');

