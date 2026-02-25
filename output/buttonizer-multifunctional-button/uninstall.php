<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buttonizer_buttons');
delete_site_option('buttonizer_buttons');
delete_option('buttonizer_buttons_published');
delete_site_option('buttonizer_buttons_published');
delete_option('buttonizer_rules');
delete_site_option('buttonizer_rules');
delete_option('buttonizer_rules_published');
delete_site_option('buttonizer_rules_published');
delete_option('buttonizer_schedules');
delete_site_option('buttonizer_schedules');
delete_option('buttonizer_schedules_published');
delete_site_option('buttonizer_schedules_published');
delete_option('buttonizer_has_changes');
delete_site_option('buttonizer_has_changes');
delete_option('buttonizer_buttons_backup_30');
delete_site_option('buttonizer_buttons_backup_30');
delete_option('buttonizer_buttons_published_backup_30');
delete_site_option('buttonizer_buttons_published_backup_30');
delete_option('buttonizer_has_changes_backup_30');
delete_site_option('buttonizer_has_changes_backup_30');
delete_option('buttonizer_rules_backup_30');
delete_site_option('buttonizer_rules_backup_30');
delete_option('buttonizer_rules_published_backup_30');
delete_site_option('buttonizer_rules_published_backup_30');
delete_option('buttonizer_schedules_backup_30');
delete_site_option('buttonizer_schedules_backup_30');
delete_option('buttonizer_schedules_published_backup_30');
delete_site_option('buttonizer_schedules_published_backup_30');
delete_option('buttonizer_settings_backup_30');
delete_site_option('buttonizer_settings_backup_30');
delete_option('buttonizer_settings');
delete_site_option('buttonizer_settings');
delete_option('buttonizer_account');
delete_site_option('buttonizer_account');
delete_option('buttonizer_times_loaded');
delete_site_option('buttonizer_times_loaded');
delete_option('buttonizer_buttons_backup');
delete_site_option('buttonizer_buttons_backup');
delete_option('buttonizer_opening_settings_backup');
delete_site_option('buttonizer_opening_settings_backup');
delete_option('buttonizer_page_categories_backup');
delete_site_option('buttonizer_page_categories_backup');
delete_option('buttonizer_general_settings_backup');
delete_site_option('buttonizer_general_settings_backup');
delete_option('buttonizer_opening_settings');
delete_site_option('buttonizer_opening_settings');
delete_option('buttonizer_page_categories');
delete_site_option('buttonizer_page_categories');
delete_option('buttonizer_general_settings');
delete_site_option('buttonizer_general_settings');
delete_option('buttonizer_buttons_backup_20');
delete_site_option('buttonizer_buttons_backup_20');
delete_option('buttonizer_buttons_published_20');
delete_site_option('buttonizer_buttons_published_20');
delete_option('buttonizer_has_changes_20');
delete_site_option('buttonizer_has_changes_20');
delete_option('buttonizer_rules_20');
delete_site_option('buttonizer_rules_20');
delete_option('buttonizer_rules_published_20');
delete_site_option('buttonizer_rules_published_20');
delete_option('buttonizer_schedules_20');
delete_site_option('buttonizer_schedules_20');
delete_option('buttonizer_schedules_published_20');
delete_site_option('buttonizer_schedules_published_20');
delete_option('buttonizer_settings_20');
delete_site_option('buttonizer_settings_20');
delete_option('buttonizer_rules_backup_6');
delete_site_option('buttonizer_rules_backup_6');
delete_option('buttonizer_rules_published_backup_6');
delete_site_option('buttonizer_rules_published_backup_6');
delete_option('buttonizer_site_connection');
delete_site_option('buttonizer_site_connection');
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
delete_transient('buttonizer_site_connection');
delete_site_transient('buttonizer_site_connection');
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

