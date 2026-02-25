<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('surfl_module_settings');
delete_site_option('surfl_module_settings');
delete_option('surfl_backup_settings');
delete_site_option('surfl_backup_settings');
delete_option('surfl_lh_enabled');
delete_site_option('surfl_lh_enabled');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('surfl_lh_custom_login_slug');
delete_site_option('surfl_lh_custom_login_slug');
delete_option('surfl_lh_version');
delete_site_option('surfl_lh_version');
delete_option('surfl_lh_login_page_id');
delete_site_option('surfl_lh_login_page_id');
delete_option('surfl_lh_max_attempts');
delete_site_option('surfl_lh_max_attempts');
delete_option('surfl_lh_ban_duration');
delete_site_option('surfl_lh_ban_duration');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('surfl_lh_cleanup_transient');
delete_site_transient('surfl_lh_cleanup_transient');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('surfl_continue_backup');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

