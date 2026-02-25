<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('version_info_show_admin_bar');
delete_site_option('version_info_show_admin_bar');
delete_option('version_info_show_dashboard_widget');
delete_site_option('version_info_show_dashboard_widget');
delete_option('version_info_allowed_roles');
delete_site_option('version_info_allowed_roles');
delete_option('version_info_show_footer');
delete_site_option('version_info_show_footer');
delete_option('version_info_show_env_badge');
delete_site_option('version_info_show_env_badge');
delete_option('version_info_env_admin_bar_highlight');
delete_site_option('version_info_env_admin_bar_highlight');
delete_option('version_info_wl_plugin_name');
delete_site_option('version_info_wl_plugin_name');
delete_option('version_info_wl_author_name');
delete_site_option('version_info_wl_author_name');
delete_option('version_info_wl_hide_branding');
delete_site_option('version_info_wl_hide_branding');
delete_option('version_info_alert_enabled');
delete_site_option('version_info_alert_enabled');
delete_option('version_info_alert_recipients');
delete_site_option('version_info_alert_recipients');
delete_option('version_info_alert_types');
delete_site_option('version_info_alert_types');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

