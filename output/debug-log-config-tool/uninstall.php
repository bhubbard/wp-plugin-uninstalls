<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DLCT_LOGconfig_notice_dismissed_20');
delete_site_option('DLCT_LOGconfig_notice_dismissed_20');
delete_option('dlct_db_query_log');
delete_site_option('dlct_db_query_log');
delete_option('dlct_debug_file_path_generated');
delete_site_option('dlct_debug_file_path_generated');
delete_option('dlct_debug_file_path');
delete_site_option('dlct_debug_file_path');
delete_option('dlct_ddebug_file_path');
delete_site_option('dlct_ddebug_file_path');
delete_option('dlct_log_file_copied');
delete_site_option('dlct_log_file_copied');
delete_option('dlct_selected_active_plugins_list');
delete_site_option('dlct_selected_active_plugins_list');
delete_option('safe_mode_status');
delete_site_option('safe_mode_status');
delete_option('before_safe_mode_active_plugins_list');
delete_site_option('before_safe_mode_active_plugins_list');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('dlct_daily_email_check');

