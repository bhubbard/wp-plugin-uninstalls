#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'password_protected_status'
wp option delete 'password_protected_feeds'
wp option delete 'password_protected_rest'
wp option delete 'password_protected_administrators'
wp option delete 'password_protected_users'
wp option delete 'password_protected_password'
wp option delete 'password_protected_allowed_ip_addresses'
wp option delete 'password_protected_remember_me'
wp option delete 'password_protected_remember_me_lifetime'
wp option delete 'password_protected_text_above_password'
wp option delete 'password_protected_text_below_password'
wp option delete 'password_protected_use_transient'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'pp_activity_logs_db_updated'
wp option delete 'password_protected_1.5_update_database'
wp option delete 'password_protected_activity_report_enable'
wp option delete 'password_protected_version'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'password_protected_email_notification_hook'

