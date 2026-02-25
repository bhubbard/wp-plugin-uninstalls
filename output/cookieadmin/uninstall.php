<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookieadmin_version');
delete_site_option('cookieadmin_version');
delete_option('cookieadmin_law');
delete_site_option('cookieadmin_law');
delete_option('cookieadmin_consent_settings');
delete_site_option('cookieadmin_consent_settings');
delete_option('cookieadmin_pro_scanner');
delete_site_option('cookieadmin_pro_scanner');
delete_option('cookieadmin_scan');
delete_site_option('cookieadmin_scan');
delete_option('cookieadmin_first_scan');
delete_site_option('cookieadmin_first_scan');
delete_option('cookieadmin_settings');
delete_site_option('cookieadmin_settings');
delete_option('cookieadmin_consent_purge');
delete_site_option('cookieadmin_consent_purge');
delete_option('softaculous_plugin_update_notice');
delete_site_option('softaculous_plugin_update_notice');

// Delete Transients
delete_transient('cookieadmin_auto_scan_in_progress');
delete_site_transient('cookieadmin_auto_scan_in_progress');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('cookieadmin_run_auto_scan_batch');
wp_clear_scheduled_hook('cookieadmin_daily_consent_log_pruning');
wp_clear_scheduled_hook('cookieadmin_run_auto_cookie_scan');

