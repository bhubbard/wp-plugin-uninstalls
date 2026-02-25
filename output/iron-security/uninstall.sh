#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpironis_plugin_settings_loginlogout'
wp option delete 'wpironis_plugin_settings_general'
wp option delete 'wpironis_options'
wp option delete 'auto_update_core_major'
wp option delete 'auto_update_core_minor'
wp option delete 'auto_update_core_dev'
wp option delete 'iron_security_last_activity'
wp option delete 'iron_security_2fa_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_wpis_attempts' OR option_name LIKE '_site_transient_%_wpis_attempts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_wpis_lockout' OR option_name LIKE '_site_transient_%_wpis_lockout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_wpis_lockout_time' OR option_name LIKE '_site_transient_%_wpis_lockout_time'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iron_security_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iron_security_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iron_security_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iron_security_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iron_security_2fa_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iron_security_2fa_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iron_security_2fa_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iron_security_2fa_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google_authenticator_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google_authenticator_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google_authenticator_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google_authenticator_secret'"
