<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('password_protected_status');
delete_site_option('password_protected_status');
delete_option('password_protected_feeds');
delete_site_option('password_protected_feeds');
delete_option('password_protected_rest');
delete_site_option('password_protected_rest');
delete_option('password_protected_administrators');
delete_site_option('password_protected_administrators');
delete_option('password_protected_users');
delete_site_option('password_protected_users');
delete_option('password_protected_password');
delete_site_option('password_protected_password');
delete_option('password_protected_allowed_ip_addresses');
delete_site_option('password_protected_allowed_ip_addresses');
delete_option('password_protected_remember_me');
delete_site_option('password_protected_remember_me');
delete_option('password_protected_remember_me_lifetime');
delete_site_option('password_protected_remember_me_lifetime');
delete_option('password_protected_text_above_password');
delete_site_option('password_protected_text_above_password');
delete_option('password_protected_text_below_password');
delete_site_option('password_protected_text_below_password');
delete_option('password_protected_use_transient');
delete_site_option('password_protected_use_transient');
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
delete_option('pp_activity_logs_db_updated');
delete_site_option('pp_activity_logs_db_updated');
delete_option('password_protected_1.5_update_database');
delete_site_option('password_protected_1.5_update_database');
delete_option('password_protected_activity_report_enable');
delete_site_option('password_protected_activity_report_enable');
delete_option('password_protected_version');
delete_site_option('password_protected_version');

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
wp_clear_scheduled_hook('password_protected_email_notification_hook');

