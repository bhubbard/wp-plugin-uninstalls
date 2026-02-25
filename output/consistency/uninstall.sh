#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'consistency_plugin_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'consistency_plugin_setting_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'consistency_plugin_setting_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'consistency_plugin_setting_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'consistency_plugin_setting_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'consistency_plugin_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'consistency_plugin_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'consistency_plugin_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'consistency_plugin_user_settings'"
