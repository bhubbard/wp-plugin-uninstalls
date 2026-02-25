<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdt_settings');
delete_site_option('wpdt_settings');
delete_option('wpdt_group_logs_status');
delete_site_option('wpdt_group_logs_status');
delete_option('wpdt_auto_refresh_status');
delete_site_option('wpdt_auto_refresh_status');
delete_option('cron');
delete_site_option('cron');
delete_option('debug_log_tool_current_version');
delete_site_option('debug_log_tool_current_version');

// Delete Transients
delete_transient('wpdt_cron_status_ok');
delete_site_transient('wpdt_cron_status_ok');
delete_transient('wpdt_installing');
delete_site_transient('wpdt_installing');

