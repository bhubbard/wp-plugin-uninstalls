#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'persistent_login_feature_flags'
wp option delete 'persistent_login_options'
wp option delete 'persistent_login_notification_email_subject'
wp option delete 'persistent_login_user_count'
wp option delete 'persistent_login_dashboard_stats'
wp option delete 'persistent_login_notification_email_template'
wp option delete 'persistent_login_db_version'
wp option delete 'persistent_login_options_user_access'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'persistent_login_user_count_temporary'
wp transient delete 'persistent_login_user_count_running'
wp transient delete 'persistent_login_user_count_current_role'
wp transient delete 'persistent_login_last_count'
wp transient delete 'persistent_login_allowed_roles_reference'
wp transient delete 'persistent_login_user_count_offset'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'persistent_login_user_count'
wp cron event delete 'persistent_login_update_count'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'persistent_login_remember_me'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'persistent_login_remember_me'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'persistent_login_remember_me'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'persistent_login_remember_me'"
