<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkflow_chat_settings');
delete_site_option('linkflow_chat_settings');
delete_option('linkflow_chat_version');
delete_site_option('linkflow_chat_version');
delete_option('linkflow_chat_db_version');
delete_site_option('linkflow_chat_db_version');
delete_option('linkflow_chat_activation_time');
delete_site_option('linkflow_chat_activation_time');
delete_option('linkflow_chat_first_run');
delete_site_option('linkflow_chat_first_run');
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
delete_transient('linkflow_chat_activated');
delete_site_transient('linkflow_chat_activated');
delete_transient('linkflow_chat_updated');
delete_site_transient('linkflow_chat_updated');
delete_transient('linkflow_chat_table_stats');
delete_site_transient('linkflow_chat_table_stats');
delete_transient('linkflow_chat_db_size');
delete_site_transient('linkflow_chat_db_size');
delete_transient('linkflow_chat_active_services');
delete_site_transient('linkflow_chat_active_services');
delete_transient('linkflow_chat_upgraded');
delete_site_transient('linkflow_chat_upgraded');
delete_transient('linkflow_chat_upgrade_error');
delete_site_transient('linkflow_chat_upgrade_error');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('linkflow_chat_process_email_queue');
wp_clear_scheduled_hook('linkflow_chat_cleanup');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

