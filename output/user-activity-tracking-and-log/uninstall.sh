#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moove_activity-options'
wp option delete 'moove_post_act'
wp option delete 'moove_importer_has_database'
wp option delete 'moove_importer_has_extras'
wp option delete 'uat_db_support_request_url'
wp option delete 'uat_delete_abandoned_logs'
wp option delete 'uat_last_checked'
wp option delete 'uat_update_data'
wp option delete 'moove-activity-timezone-offset'
wp option delete 'moove_tracking_settings_act'
wp option delete 'uat_log_permissions'
wp option delete 'uat_settings_permissions'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plugin_info_%' OR option_name LIKE '_site_transient_plugin_info_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ma_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ma_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ma_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ma_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ma_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ma_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ma_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ma_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moove_activity_screen_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moove_activity_screen_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moove_activity_screen_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moove_activity_screen_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uat_dismiss_stamp_p'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uat_dismiss_stamp_p'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uat_dismiss_stamp_p'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uat_dismiss_stamp_p'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uat_dismiss_stamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uat_dismiss_stamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uat_dismiss_stamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uat_dismiss_stamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'uat_dismiss_stamp%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'uat_dismiss_stamp%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'uat_dismiss_stamp%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'uat_dismiss_stamp%'"
