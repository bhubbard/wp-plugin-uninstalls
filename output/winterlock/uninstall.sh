#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wal_checkbox_enable_winterlock_dash_styles'
wp option delete 'wal_allowed_admins'
wp option delete 'wal_allowed_roles'
wp option delete 'sw_wal_log_events_options'
wp option delete 'wal_log_hide_columns'
wp option delete 'winter-activity-log-menuitems'
wp option delete 'winter-activity-log-submenuitems'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%log_days'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_failed_login_block'"
wp option delete 'wal_checkbox_disable_hints'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_plugin_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_cron_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_level_1_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_level_2_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_log_level_3_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_disable_multilogin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_hide_ip'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkbox_enable_winterlock_dash_styles'"
wp option delete 'wal_db_version'
wp option delete 'wal_checkbox_disable_multilogin'
wp option delete 'wal_log_only_roles'
wp option delete 'wal_checkbox_failed_login_block'
wp option delete 'wal_checkbox_log_level_1_disable'
wp option delete 'wal_checkbox_log_level_2_disable'
wp option delete 'wal_checkbox_log_level_3_disable'
wp option delete 'wal_checkbox_log_plugin_disable'
wp option delete 'wal_checkbox_log_cron_disable'
wp option delete 'wal_log_days'
wp option delete 'wal_checkbox_hide_ip'
wp option delete 'winterlock_reviews_installed_on'
wp option delete 'winterlock_total_open_count'
wp option delete 'wal_checkbox_disable_dashwidgets'
wp option delete 'dashboard_widget_options'
wp option delete 'wal_clickatell_one_api_key'
wp option delete 'wal_clickatell_http_api_key'
wp option delete 'wal_smsapicom_http_api_key'
wp option delete 'wal_smsto_api_key'
wp option delete 'winter_mvc_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'wal_my_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_winterlock_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_winterlock_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_winterlock_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_winterlock_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_winterlock_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_winterlock_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_winterlock_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_winterlock_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_winterlock_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_winterlock_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_winterlock_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_winterlock_reviews_already_did'"
